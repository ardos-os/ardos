{ mkArdosDerivation, ap2, self }:

with self;

mkArdosDerivation {
  pname = "freetype2";
  version = "2.13.3";
  src = builtins.fetchurl {
    url = "https://github.com/freetype/freetype/archive/refs/tags/VER-2-13-3.tar.gz";
    sha256 = "00s11jj6vp1dcvl6fp0dgjmb4pkc0d9v1fliv7h77lsn8y78jp5w";
  };
  nativeBuildInputs = [ ap2.crossPkgs.pkgsBuildTarget.cmake ];
  buildInputs = [ libpng zlib ];
  patchPhase = "patchShebangs .";
  cmakeFlags = [
    "-DBUILD_SHARED_LIBS=ON"
    "-DFT_DISABLE_BZIP2=TRUE"
    "-DFT_DISABLE_HARFBUZZ=TRUE"
    "-DFT_DISABLE_BROTLI=TRUE"
    "-DCMAKE_SKIP_RPATH=TRUE"
    "-DCMAKE_INSTALL_LIBDIR=lib"
    "-DCMAKE_INSTALL_INCLUDEDIR=include"
  ];

  runtimeLayout = [
    { source = "lib/"; target = "/ardos/core/"; }
  ];
}
