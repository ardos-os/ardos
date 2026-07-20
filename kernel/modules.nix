{ buildPkgs, kernel, cargo-nok }:

let
  inherit (buildPkgs) lib;
in
{
  # Build a Rust Linux kernel module using cargo-nok.
  #
  # Required inputs:
  #   kernel     - The kernel headers derivation (output of linux-headers). Must
  #                contain the prepared build tree: scripts/, rust/, include/, etc.
  #   cargo-nok  - The cargo-nok binary package.
  #
  # mkKernelModule arguments:
  #   name             - Derivation name (e.g. "motherboardm").
  #   src              - Module source directory (must contain Cargo.toml).
  #   sourceRoot       - Subdirectory within src to build from (default: "source").
  #   cargoExtraArgs   - Extra arguments passed to `cargo nok build`.
  #   rustc            - The Rust compiler to use. Must match CONFIG_RUSTC_VERSION_TEXT
  #                      recorded by the kernel build. Defaults to buildPkgs.rustc.
  #   vendorDependencies - Path to a pre-vendored cargo directory. If set, the build
  #                        will use vendored sources instead of fetching from the network.
  #   preBuild         - Extra shell commands to run before the cargo-nok build.
  #   buildPhase       - Override the default build phase.
  #   installPhase     - Override the default install phase.
  #   passthru         - Extra attributes to attach to the derivation.
  #   meta             - Meta information.
  mkKernelModule = {
    name,
    src,
    sourceRoot ? "source",
    cargoExtraArgs ? "",
    rustc ? buildPkgs.rustc,
    vendorDependencies ? null,
    preBuild ? "",
    buildPhase ? null,
    installPhase ? null,
    passthru ? { },
    meta ? { },
  }:
    let
      # Determine CC, LD, OBJCOPY for the build.
      # cargo-nok reads these from the environment or falls back to system defaults.
      cc = "${buildPkgs.gcc}/bin/cc";
      ld = "${buildPkgs.binutils}/bin/ld";
      objcopy = "${buildPkgs.binutils}/bin/objcopy";

      defaultBuildPhase = ''
        runHook preBuild

        ${lib.optionalString (vendorDependencies != null) ''
          # Set up vendored cargo sources so cargo build works offline.
          mkdir -p .cargo
          ln -sf ${vendorDependencies}/.cargo/config.toml .cargo/config.toml
        ''}

        ${preBuild}

        cargo nok build ${cargoExtraArgs}

        runHook postBuild
      '';

      defaultInstallPhase = ''
        runHook preInstall

        mkdir -p $out
        find . -name "*.ko" -exec cp {} $out/ \;

        runHook postInstall
      '';
    in
    buildPkgs.stdenv.mkDerivation {
      inherit name src sourceRoot passthru meta;

      nativeBuildInputs = [
        cargo-nok
        rustc
        buildPkgs.cargo
        buildPkgs.gcc
        buildPkgs.binutils
      ];

      # cargo-nok discovers the kernel build tree via NOK_KERNEL_DIR.
      NOK_KERNEL_DIR = "${kernel}";

      # Tools used by cargo-nok for module linking and metadata compilation.
      CC = cc;
      LD = ld;
      OBJCOPY = objcopy;

      buildPhase = if buildPhase != null then buildPhase else defaultBuildPhase;
      installPhase = if installPhase != null then installPhase else defaultInstallPhase;
    };

  # Vendor all Cargo dependencies (including git patches) for a module source tree.
  # Returns a fixed-output derivation containing vendored sources and a cargo config.
  #
  # Usage:
  #   vendorDeps = kernelModules.vendorDependencies {
  #     src = ../../modules/motherboard;
  #     manifestPath = "motherboardm/Cargo.toml";
  #   };
  #
  # Then pass `vendorDependencies = vendorDeps;` to mkKernelModule.
  vendorDependencies = {
    src,
    manifestPath ? "Cargo.toml",
  }:
    let
      cargo = "${buildPkgs.cargo}/bin/cargo";
      git = "${buildPkgs.gitMinimal}/bin/git";
      cacert = "${buildPkgs.cacert}";
      bash = "${buildPkgs.bash}/bin/bash";
      coreutils = "${buildPkgs.coreutils}/bin";
      gnugrep = "${buildPkgs.gnugrep}/bin";
      gnused = "${buildPkgs.gnused}/bin";
      gawk = "${buildPkgs.gawk}/bin";
      findutils = "${buildPkgs.findutils}/bin";
    in
    builtins.derivation {
      name = "cargo-vendor-deps";
      inherit src;
      builder = bash;
      args = [ "-e" ./vendor-deps.sh ];
      system = buildPkgs.stdenv.hostPlatform.system;
      SSL_CERT_FILE = "${cacert}/etc/ssl/certs/ca-certificates.crt";
      PATH = "${coreutils}:${gnugrep}:${gnused}:${gawk}:${findutils}";
      inherit manifestPath cargo git cacert;
      # Fixed-output: network access allowed, hash is content-based.
      outputHashAlgo = "sha256";
      outputHashMode = "recursive";
      outputHash = "sha256-LHyRz4YUOB7ZSykLr2bS3PIwTD1q4/78aVJv1fzEOL8=";
    };
}
