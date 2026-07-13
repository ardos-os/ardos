{ mkArdosDerivation, ap2, self }:

with self;

mkArdosDerivation {
  pname = "libgudev";
  version = "238";
  src = builtins.fetchurl {
    url = "https://gitlab.gnome.org/GNOME/libgudev/-/archive/238/libgudev-238.tar.gz";
    sha256 = "1zdan3nmwq52888rh9xv612sjhf6n84k7la57x0myxrrccn70g24";
  };
  nativeBuildInputs = [ ap2.buildPkgs.glib ] ++ (with ap2.crossPkgs.pkgsBuildTarget; [ meson ninja pkg-config ]);
  buildInputs = [ glib libudev ];

  mesonFlags = [
    "-Dtests=disabled"
    "-Dintrospection=disabled"
    "-Dvapi=disabled"
  ];

  postInstall = ''
    rm -rf $out/share  $out/lib/*.a
  '';

  runtimeLayout = [
    { source = "lib/"; target = "/ardos/core/"; }
    { source = "lib64/"; target = "/ardos/core/"; }
    { source = "lib/pkgconfig/"; target = "/dev/null"; }
  ];
}
