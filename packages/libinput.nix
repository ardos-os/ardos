{ mkArdosDerivation, ap2, self, lib }:

with self;

mkArdosDerivation {
  pname = "libinput";
  version = "1.31.3";

  src = ap2.buildPkgs.fetchFromGitLab {
    domain = "gitlab.freedesktop.org";
    owner = "libinput";
    repo = "libinput";
    rev = "1.31.3";
    hash = "sha256-2l+YGD1AFTwJRouMg0d3nQX+2me6A4yOB4g2WE2H//g=";
  };

  nativeBuildInputs = with ap2.crossPkgs.pkgsBuildTarget; [
    meson
    ninja
    pkg-config
  ] ++ (with ap2.buildPkgs; [
    stdenv.cc
  ]);

  buildInputs = [
    libevdev
    mtdev
    libudev
    libwacom
  ];


  postPatch = ''
    # Don't create an empty directory under /etc.
    sed -i "/install_emptydir(dir_etc \/ 'libinput')/d" meson.build
  '';

  mesonFlags = [
    "-Ddocumentation=false"
    "-Ddebug-gui=false"
    "-Dtests=false"
    "-Dlibwacom=true"
    "-Dlua-plugins=disabled"
    "--sysconfdir=/ardos/etc"
  ];

  postInstall = ''
    rm -rf $out/share/man $out/share/doc
  '';

  runtimeLayout = [
    { source = "lib/"; target = "/ardos/inputs/"; }
    { source = "lib64/"; target = "/ardos/inputs/"; }
    { source = "lib/pkgconfig/"; target = "/dev/null"; }
  ];
}
