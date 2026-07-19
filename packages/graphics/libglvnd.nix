{ mkArdosDerivation, ap2, self }:

mkArdosDerivation {
  pname = "libglvnd";
  version = "1.7.0";
  src = builtins.fetchurl {
    url = "https://gitlab.freedesktop.org/glvnd/libglvnd/-/archive/v1.7.0/libglvnd-v1.7.0.tar.gz";
    sha256 = "0g9gzx8jy873lamym6bjchf2k6xxij02909lwavc1d5gdaq1avib";
  };
  nativeBuildInputs = with ap2.crossPkgs.pkgsBuildTarget; [ meson ninja pkg-config ];


  mesonFlags = [
    "-Dgles1=false"
    "-Dglx=disabled"
    "-Dx11=disabled"
    "-Ddatadir=/ardos/graphics/drivers"
    "-Dsysconfdir=/ardos/etc"
  ];

  postInstall = ''
    rm -rf $out/share  $out/lib/*.a
  '';

  runtimeLayout = [
    { source = "lib/"; target = "/ardos/graphics/"; }
    { source = "lib64/"; target = "/ardos/graphics/"; }
    { source = "lib/pkgconfig/"; target = "/dev/null"; }
  ];
}
