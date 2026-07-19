{ mkArdosDerivation, ap2, self }:

with self;

let
  wrappedPcre2 = ap2.wrapDerivation ap2.crossPkgs.pcre2 {
    runtimeLayout = [
      { source = "lib/"; target = "/ardos/inputs/foreign/"; }
      { source = "lib64/"; target = "/ardos/inputs/foreign/"; }
      { source = "lib/pkgconfig/"; target = "/dev/null"; }
    ];
  };
in
mkArdosDerivation {
  pname = "glib";
  version = "2.84.0";
  src = builtins.fetchurl {
    url = "https://download.gnome.org/sources/glib/2.84/glib-2.84.0.tar.xz";
    sha256 = "0spzb95gdcsq7llyfx5bha257apx43m85bfg2ll5whl5rc03d0pq";
  };
  nativeBuildInputs = with ap2.crossPkgs.pkgsBuildTarget; [ meson ninja pkg-config python3 cmake ];
  buildInputs = [ libffi self.zlib wrappedPcre2 ];
  passthru.pcre2 = wrappedPcre2;
  mesonFlags = [
    "--cross-file=${builtins.toFile "ardos-glib-cross.conf" ''
      [properties]
      needs_exe_wrapper = true
    ''}"
    "-Dtests=false"
    "-Dinstalled_tests=false"
    "-Dnls=disabled"
    "-Ddtrace=disabled"
    "-Dsystemtap=disabled"
    "-Dsysprof=disabled"
    "-Dlibmount=disabled"
    "-Dselinux=disabled"
    "-Dman=false"
    "-Dgtk_doc=false"
    "-Dintrospection=disabled"
    "-Dlibelf=disabled"
  ];
  postPatch = ''
    patchShebangs tools/gen-visibility-macros.py
  '';
  preBuild = ''
    export NIX_LDFLAGS+=" -rpath ${self.zlib}/lib -rpath ${wrappedPcre2.out}/lib"
  '';
  doCheck = false;
  postInstall = ''
    rm -rf $out/share  $out/lib/*.a
  '';

  runtimeLayout = [
    { source = "lib/"; target = "/ardos/inputs/foreign/"; }
    { source = "lib64/"; target = "/ardos/inputs/foreign/"; }
    { source = "lib/pkgconfig/"; target = "/dev/null"; }
  ];
}
