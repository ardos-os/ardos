{ mkArdosDerivation, ap2, self, fetchurl }:

mkArdosDerivation {
  pname = "expat";
  version = "2.6.4";
  src = fetchurl {
    url = "https://github.com/libexpat/libexpat/releases/download/R_2_6_4/expat-2.6.4.tar.gz";
    sha256 = "0y12zd9inldn1m7676s2892z4m27yxij10bs7rx45mrv5cbvf0zx";
  };

  configureFlags = [ "--enable-shared" "--disable-static" ];

  postInstall = ''
    rm -rf $out/share $out/bin  $out/lib/*.la $out/lib/*.a
  '';

  runtimeLayout = [
    { source = "lib/"; target = "/ardos/core/"; }
    { source = "lib/pkgconfig/"; target = "/dev/null"; }
  ];
}
