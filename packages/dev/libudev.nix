{
  mkArdosDerivation,
  self,
  ap2,
}:
mkArdosDerivation {
  pname = "libudev-zero";
  version = "1.0.3";
  src = builtins.fetchurl {
    url = "https://github.com/illiliti/libudev-zero/archive/refs/tags/1.0.3.tar.gz";
    sha256 = "19bxny0gnsnnhjs86ah9pbl81vcgzwkdfzkcircikl32gmjrpn0b";
  };

  buildInputs = [self.linux-headers];

  makeFlags = [
    "PREFIX=$(out)"
    "CC=${ap2.crossPkgs.stdenv.cc.targetPrefix}cc"
    "AR=${ap2.crossPkgs.stdenv.cc.targetPrefix}ar"
  ];

  preBuild = ''
    makeFlagsArray+=(
      "XCFLAGS=-I${self.linux-headers}/include -fPIC -pthread -D_XOPEN_SOURCE=700"
    )
  '';

  installTargets = ["install-shared" "install-headers" "install-pkgconfig"];

  runtimeLayout = [
    {
      source = "lib/";
      target = "/ardos/core/";
    }
    {
      source = "lib64/";
      target = "/ardos/core/";
    }
  ];
}
