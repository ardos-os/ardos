{
  mkArdosDerivation,
  ap2,
  self,
}:
mkArdosDerivation {
  pname = "mtdev";
  version = "1.1.5";
  src = builtins.fetchurl {
    url = "https://github.com/rydberg/mtdev/archive/refs/tags/v1.1.5.tar.gz";
    sha256 = "0i6q0kq13bxsigcx2afhrqv7wkwzzlhabjcvnsl5jbw2s7jhdhw7";
  };

  nativeBuildInputs = with ap2.crossPkgs.pkgsBuildTarget; [autoconf automake libtool pkg-config];
  configureFlags = ["--disable-static"];
  preConfigure = "autoreconf -fi";

  postInstall = ''
    rm -rf $out/share  $out/lib/*.a $out/lib/*.la
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
