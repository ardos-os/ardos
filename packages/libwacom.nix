{ mkArdosDerivation, ap2, self, fetchFromGitHub }:

with self;

mkArdosDerivation rec {
  pname = "libwacom";
  version = "2.13.0";
  
  src = fetchFromGitHub {
    owner = "linuxwacom";
    repo = "libwacom";
    rev = "libwacom-${version}";
    hash = "sha256-0TlTt/9kN8NiWGDhvzMfvgJZnlzwcEFzAOCSzRowX8A=";
  };
  nativeBuildInputs = [ ap2.buildPkgs.python3 ] ++ (with ap2.crossPkgs.pkgsBuildTarget; [ meson ninja pkg-config ]);
  buildInputs = [ glib libgudev libevdev ];

  postPatch = ''
    sed -i "s|'-DDATADIR=\"@0@\"'.format(dir_data)|'-DDATADIR=\"/ardos/inputs/wacom\"'|" meson.build
    sed -i "s|'-DETCDIR=\"@0@\"'.format(dir_etc)|'-DETCDIR=\"/ardos/etc/libwacom\"'|" meson.build
  '';

  mesonFlags = [
    "-Dtests=disabled"
    "-Ddocumentation=disabled"
  ];

  postInstall = ''
    rm -f $out/lib/*.a
  '';

  runtimeLayout = [
    { source = "lib/"; target = "/ardos/inputs/"; }
    { source = "lib64/"; target = "/ardos/inputs/"; }
    { source = "lib/pkgconfig/"; target = "/dev/null"; }
    { source = "share/libwacom/"; target = "/ardos/inputs/wacom/"; }
  ];
}
