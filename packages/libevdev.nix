{ mkArdosDerivation, ap2, self }:

  ap2.mkArdosDerivation rec {
    pname = "libevdev";
    version = "1.13.6";

    nativeBuildInputs = [
      ap2.crossPkgs.pkgsBuildTarget.meson
      ap2.crossPkgs.pkgsBuildTarget.ninja
      ap2.crossPkgs.pkgsBuildTarget.pkg-config
      ap2.crossPkgs.pkgsBuildTarget.python3
      ap2.crossPkgs.buildPackages.stdenv.cc
    ];
    postPatch = "patchShebangs .";
    src = builtins.fetchurl {
      url = "https://www.freedesktop.org/software/libevdev/libevdev-${version}.tar.xz";
      sha256 = "sha256-c/IV7MvYIz9BRzesBryiaH5nxEuX0tdXYJGqlxhVERA=";
    };

    mesonFlags = [
      "-Dtests=disabled"
      "-Ddocumentation=disabled"
    ];

    postInstall = ''
      rm -rf \
        $out/share \
        $out/lib/*.a
    '';
    runtimeLayout = [
      { source = "lib/"; target = "/ardos/core/"; }
      { source = "lib64/"; target = "/ardos/core/"; }
      { source = "lib/pkgconfig/"; target = "/dev/null"; }
    ];
  }
