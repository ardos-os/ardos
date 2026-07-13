{ mkArdosDerivation, ap2, fetchurl, self }:

mkArdosDerivation {
  pname = "libxcrypt";
  version = "4.5.2";
  src = fetchurl {
    url = "https://github.com/besser82/libxcrypt/releases/download/v4.5.2/libxcrypt-4.5.2.tar.xz";
    sha256 = "sha256-cVE6McAaQovM1TZ6Mv2V8RXW2sUPtbYMd51ceUKuwHE=";
  };

  nativeBuildInputs = with ap2.crossPkgs.pkgsBuildTarget; [ perl pkg-config ];

  configureFlags = [
    "--enable-hashes=strong"
    "--enable-obsolete-api=glibc"
    "--disable-failure-tokens"
    "--disable-werror"
    "--enable-static"
    "--disable-shared"
  ];
}
