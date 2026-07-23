{
  mkArdosDerivation,
  ap2,
  self,
}:
with self;
  mkArdosDerivation {
    pname = "libpng";
    version = "1.6.47";
    src = builtins.fetchurl {
      url = "https://downloads.sourceforge.net/project/libpng/libpng16/1.6.47/libpng-1.6.47.tar.gz";
      sha256 = "1fxgbvc00yjzha2s1d74bsc675z8v2j691ypikcf68z05z31ah88";
    };
    nativeBuildInputs = [ap2.crossPkgs.pkgsBuildTarget.cmake];
    buildInputs = [zlib];

    cmakeFlags = [
      "-DPNG_TESTS=OFF"
      "-DPNG_SHARED=ON"
      "-DPNG_STATIC=OFF"
      "-DCMAKE_SKIP_RPATH=TRUE"
    ];

    postInstall = ''
      rm -rf $out/bin $out/share $out/lib/*.a $out/lib/cmake
    '';

    runtimeLayout = [
      {
        source = "lib/";
        target = "/ardos/core/";
      }
      {
        source = "lib/pkgconfig/";
        target = "/dev/null";
      }
    ];
  }
