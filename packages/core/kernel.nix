{
  mkArdosDerivation,
  ap2,
  self,
  writeText,
  fetchFromGitHub,
}:
ap2.kernel {
  version = "7.2-rc4-ardos";
  src = fetchFromGitHub {
    owner = "ardos-os";
    repo = "linux";
    rev = "d767eebbb7ab793d91b611a45338a983fa8c4cf3";
    hash = "sha256-YQPW0bVikMtsR3Z2Xb3yaxwGU1fxbw0RowQuMoBDZXE=";
  };
  configFile = writeText ".config" ((builtins.readFile ../../kernel/.config)
    + ''
      CONFIG_EARLY_BOOT_LOGO=y
      CONFIG_EARLY_BOOT_LOGO_FILE="${./ardosos.bmp}"
    '');
}
