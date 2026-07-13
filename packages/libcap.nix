{ mkArdosDerivation, ap2, self, fetchurl }:

mkArdosDerivation {
  pname = "libcap";
  version = "2.71";
  src = fetchurl {
    url = "https://git.kernel.org/pub/scm/libs/libcap/libcap.git/snapshot/libcap-2.71.tar.gz";
    sha256 = "sha256-Y9DHxo/WAUF/5IU0hxXvQaTt8LLpAmk13St+/Gjh31k=";
  };
  nativeBuildInputs = [ ap2.crossPkgs.pkgsBuildTarget.patchelf ];

  # libcap has a non-standard build system; manual phases required.
  configurePhase = "runHook preConfigure; runHook postConfigure";
  buildPhase = ''
    cd libcap
    grep -E '^#define\s+CAP_([^\s]+)\s+[0-9]+\s*$' include/uapi/linux/capability.h \
      | sed -e 's/^#define\s\+/{"/' -e 's/\s*$/},/' -e 's/\s\+/",/' \
        -e 'y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/' \
      > cap_names.list.h
    $CC -O2 -Dlinux -Wall -Wwrite-strings -Wpointer-arith -Wcast-qual \
      -Wcast-align -Wstrict-prototypes -Wmissing-prototypes -Wnested-externs \
      -Winline -Wshadow -Wunreachable-code \
      -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 \
      -I. -Iinclude/uapi \
      _makenames.c -o _makenames
    patchelf --set-interpreter "$(patchelf --print-interpreter "$(type -P ls)")" _makenames
    cd ..
    mkdir -p "$TMPDIR/bin"
    target="$($CC -dumpmachine)"
    for tool in objcopy readelf nm strings; do
      cross_tool="$(command -v "''${target}-''${tool}" 2>/dev/null || true)"
      if [ -n "$cross_tool" ]; then
        ln -sf "$cross_tool" "$TMPDIR/bin/$tool"
      fi
    done
    export PATH="$TMPDIR/bin:$PATH"
    make -C libcap CC=$CC AR=$AR RANLIB=$RANLIB \
      lib=/lib prefix=$out -j$NIX_BUILD_CORES
  '';
  installPhase = ''
    make -C libcap lib=/lib prefix=$out install
    rm -rf $out/lib/*.a $out/lib/*.o
    runHook postInstall
  '';

  runtimeLayout = [
    { source = "lib/"; target = "/ardos/core/"; }
    { source = "lib64/"; target = "/ardos/core/"; }
    { source = "lib/pkgconfig/"; target = "/dev/null"; }
  ];
}
