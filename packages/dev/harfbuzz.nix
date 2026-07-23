{
  mkArdosDerivation,
  ap2,
  self,
}:
with self;
  mkArdosDerivation {
    pname = "harfbuzz";
    version = "13.2.1";

    src = ap2.buildPkgs.fetchurl {
      url = "https://github.com/harfbuzz/harfbuzz/releases/download/13.2.1/harfbuzz-13.2.1.tar.xz";
      hash = "sha256-ZpXaPrfhvgqjCS/k2BQzoztH9FGSWcdZ1ynjqaVcFCk=";
    };

    nativeBuildInputs = with ap2.crossPkgs.pkgsBuildTarget;
      [
        meson
        ninja
        pkg-config
      ]
      ++ (with ap2.buildPkgs; [
        python3
        glib
      ]);

    buildInputs = [
      freetype2
      libpng
      zlib
      glib
    ];

    mesonFlags = [
      "-Dcairo=disabled"
      "-Dintrospection=disabled"
      "-Dtests=disabled"
      "-Dfreetype=enabled"
      "-Dglib=enabled"
      "-Dgobject=enabled"
      "-Dgraphite=disabled"
      "-Dicu=disabled"
      "-Dchafa=disabled"
      "-Ddocs=disabled"
    ];

    postPatch = ''
      patchShebangs src/*.py
    '';

    postInstall = ''
      rm -rf $out/share/man $out/share/doc
    '';

    runtimeLayout = [
      {
        source = "lib/";
        target = "/ardos/core/";
      }
      {
        source = "lib64/";
        target = "/ardos/core/";
      }
      {
        source = "lib/pkgconfig/";
        target = "/dev/null";
      }
    ];
  }
