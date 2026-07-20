{
  description = "Ardos OS is a modern UX-focused open desktop/computer/mobile operating system built from the ground up";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/d407951447dcd00442e97087bf374aad70c04cea";
    crane.url = "github:ipetkov/crane";
    ap2 = {
      url = "github:ardos-os/ardos-packer2";
    };
    self.submodules = true;
  };

  outputs = inputs:
  let
    lib = inputs.nixpkgs.lib;
    systems = [ "x86_64-linux" "aarch64-linux" ];
    forAllSystems = lib.genAttrs systems;

    ap2 = inputs.ap2.lib;

    # Auto-discover packages from the packages/ directory.
    # Each package receives a `self` attrset containing all packages, so it can
    # depend on any other package by declaring `self` in its function args and
    # accessing e.g. self.mesa or self.freetype2.
    loadPackages = instance: let
      pkgDir = ./packages;

      # Recursively find all .nix files under pkgDir.
      findPkgs = dir:
        let entries = builtins.readDir dir; in
        lib.concatMap (name:
          let
            path = dir + "/${name}";
            type = entries.${name};
          in
          if type == "regular" && lib.hasSuffix ".nix" name && name != "default.nix"
          then [ path ]
          else if type == "directory"
          then findPkgs path
          else []
        ) (builtins.attrNames entries);

      pkgFiles = findPkgs pkgDir;
      callPackage = instance.callPackage;

      allPackages = builtins.listToAttrs (map (path: {
        name = lib.removeSuffix ".nix" (builtins.baseNameOf path);
        value = callPackage path { inherit self; };
      }) pkgFiles);

      self = allPackages;
    in
      allPackages;

    mkSystem = buildSystem: let
      systemToTarget = {
        "x86_64-linux"  = ap2.platforms.x86_64;
        "aarch64-linux" = ap2.platforms.aarch64;
      };
      targetPlatform = systemToTarget.${buildSystem}
        or (throw "mkSystem: unsupported build system ${buildSystem}");

      instance = ap2.init {
        inherit buildSystem;
        inherit targetPlatform;
        inherit (inputs) nixpkgs crane;
        toolchainConfig = {
          glibc.runtimePrefix = "/ardos";
        };
        externalMappings = import ./external-mappings.nix;
        glibcPlugins = crossPkgs: [
        ];
      };

      # Auto-discover all packages from packages/ directory.
      # Each package gets the full set — declare deps in function args.
      packages = loadPackages instance;

      # Explicit list of packages that enter the ROM sysroot.
      # Only these are copied into the final squashfs image.
      romPackages = with packages; [
        libdrm
        libglvnd
        libpciaccess
        mesa
        glib
        skia
        packages.shift
        (instance.wrapDerivation instance.crossPkgs.hwdata {
          runtimeLayout = [
            { source = "share/hwdata/"; target = "/ardos/graphics/hwdata/"; }
          ];
        })
      ];

      # System assembly.
      # The kernel is built by packages/core/kernel.nix so that other packages
      # (e.g. kernel modules built with cargo-nok) can reference it via self.kernel.
      ardosKernel = packages.kernel;

      ardosInitrd = instance.initrd.fromRustBinary ./initrd;

      ardosSysroot = instance.sysroot {
        name = "ardos-os";
        includePackages = romPackages;
      };

      ardosRom = instance.rom {
        sysroot = ardosSysroot;
      };

      vm = instance.vm.launch {
        kernel = ardosKernel;
        initrd = ardosInitrd;
        rom = ardosRom;
      };
    in {
      inherit packages instance;
      inherit ardosKernel ardosInitrd ardosSysroot ardosRom vm;
    };
  in {
    packages = forAllSystems (buildSystem: let
      sys = mkSystem buildSystem;
    in sys.packages // {
      kernel = sys.ardosKernel;
      initrd = sys.ardosInitrd;
      sysroot = sys.ardosSysroot;
      rom = sys.ardosRom;
      vm = sys.vm;
      default = sys.ardosRom;
    });

    checks = forAllSystems (buildSystem: {
      build = (mkSystem buildSystem).ardosRom;
    });

    devShells = forAllSystems (buildSystem: let
      sys = mkSystem buildSystem;
    in {
      default = sys.instance.buildPkgs.mkShell {
        name = "ardos-os-dev";
        inputsFrom = [ sys.instance.stdenv ];
        buildInputs = [ sys.instance.cc ];
      };
    });
  };
}
