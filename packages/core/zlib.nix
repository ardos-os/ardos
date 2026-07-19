{ mkArdosDerivation, ap2, self, fetchurl, lib }:
let stdenv = ap2.crossPkgs.stdenv; in
mkArdosDerivation {
  pname = "zlib";
  version = "1.3.1";
  src = fetchurl {
    url = "https://zlib.net/fossils/zlib-1.3.1.tar.gz";
    sha256 = "sha256-mpOyt9/ax3zrpaVYpYDnRmfdb+3kWFuR7vtg8Dty3yM=";
  };
  nativeBuildInputs = with ap2.crossPkgs.pkgsBuildTarget; [
    python3
  ];
  postInstall = ''
    rm -rf $out/share $out/lib/*.la
  '';

  runtimeLayout = [
    { source = "lib/"; target = "/ardos/core/"; }
    { source = "lib/pkgconfig/"; target = "/dev/null"; }
  ];

  enableParallelBuilding = true;
  configurePlatforms = [ ];
  dontAddStaticConfigureFlags = true;

  preConfigure = lib.optionalString (stdenv.hostPlatform != stdenv.buildPlatform) ''
    export CHOST=${stdenv.hostPlatform.config}
  '';
  
  outputs = [ "out" "dev" ];
  configureFlags = [
    "--includedir=${placeholder "dev"}/include"
    "--sharedlibdir=${placeholder "out"}/lib"
    "--libdir=${placeholder "out"}/lib"
  ];
  setOutputFlags = false;
}
