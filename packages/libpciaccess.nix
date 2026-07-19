{ mkArdosDerivation, ap2, self }:

mkArdosDerivation {
  pname = "libpciaccess";
  version = "0.18.1";
  src = builtins.fetchurl {
    url = "https://xorg.freedesktop.org/archive/individual/lib/libpciaccess-0.18.1.tar.xz";
    sha256 = "0xpslrjnfrc1a7y8f8qwnd3wq24ndpj2q77ds12mbnwand239x2a";
  };

  nativeBuildInputs = with ap2.crossPkgs.pkgsBuildTarget; [ meson ninja pkg-config ];
  buildInputs = [ self.zlib ];

  mesonFlags = [
    "-Dpci-ids=/ardos/graphics/hwdata"
  ];

  postInstall = ''
    rm -rf $out/lib/*.a $out/lib/*.la
  '';

  runtimeLayout = [
    { source = "lib/"; target = "/ardos/core/"; }
    { source = "lib64/"; target = "/ardos/core/"; }
    { source = "lib/pkgconfig/"; target = "/dev/null"; }
  ];
}
