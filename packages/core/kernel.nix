{ mkArdosDerivation, ap2, self, writeText , fetchFromGitHub}:

ap2.kernel {
  version = "7.2-rc4-ardos";
  src = fetchFromGitHub {
    owner = "ardos-os";
    repo = "linux";
    rev = "17caa4131897b246b5e00d36ee641c27941dab82";
    hash = "sha256-8hx6qTYBw0tNb8przRTQZmhlOU1GRJZOY3FM9uRchaI=";
  };
  configFile = writeText ".config" ((builtins.readFile ../../kernel/.config)+''
    CONFIG_EARLY_BOOT_LOGO=y
    CONFIG_EARLY_BOOT_LOGO_FILE=${./ardosos.bmp}
  '');
}
