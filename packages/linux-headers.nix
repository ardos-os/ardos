{ mkArdosDerivation, ap2, self, fetchurl, lib }:

let
  # Map target platform to Linux ARCH directory name
  archMap = {
    "x86_64" = "x86_64";
    "aarch64" = "arm64";
    "riscv64" = "riscv";
  };
  targetArch = archMap.${ap2.crossPkgs.stdenv.hostPlatform.cpu}
    or (throw "Unsupported target architecture for linux-headers");
in
mkArdosDerivation {
  pname = "linux-headers";
  version = "7.2-rc1";
  src = fetchurl {
    url = "https://git.kernel.org/torvalds/t/linux-7.2-rc1.tar.gz";
    hash = "sha256-tGDnTPoKQoQWiBBjgh72quimpMaYkbmrEPz07fdwzg0=";
  };

  nativeBuildInputs = (with ap2.buildPkgs; [ gcc rsync ]) ++ (with ap2.crossPkgs.pkgsBuildTarget; [ flex bison bc perl ]);

  configurePhase = "runHook preConfigure; runHook postConfigure";
  buildPhase = ''
    make ARCH=${targetArch} CROSS_COMPILE="${ap2.crossPkgs.stdenv.cc.targetPrefix}" headers_install INSTALL_HDR_PATH=$out
  '';
  installPhase = "runHook postInstall";
}
