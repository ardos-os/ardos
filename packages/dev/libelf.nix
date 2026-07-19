{ mkArdosDerivation, ap2, self }:

with self;

mkArdosDerivation {
  pname = "libelf";
  version = "0.193";
  src = builtins.fetchurl {
    url = "https://sourceware.org/elfutils/ftp/0.193/elfutils-0.193.tar.bz2";
    sha256 = "0dbnvqypvh2zy54q0bfxpkkcy0hlgfpallgq3m18skagc95z8mvq";
  };
  nativeBuildInputs = with ap2.crossPkgs.pkgsBuildTarget; [ pkg-config m4 ];
  buildInputs = [ zlib ];

  configureFlags = [
    "--disable-debuginfod"
    "--enable-libdebuginfod=dummy"
    "--enable-static"
  ];

  postInstall = ''
    rm -rf  $out/share $out/lib/*.so*
  '';
}
