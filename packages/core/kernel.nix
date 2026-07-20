{ mkArdosDerivation, ap2, self, fetchurl }:

ap2.kernel {
  version = "7.2-rc1";
  src = fetchurl {
    url = "https://git.kernel.org/torvalds/t/linux-7.2-rc1.tar.gz";
    hash = "sha256-tGDnTPoKQoQWiBBjgh72quimpMaYkbmrEPz07fdwzg0=";
  };
  configFile = ../../kernel/.config;
}
