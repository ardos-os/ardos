{
  ap2,
  self,
  pkg-config,
  lib,
  fetchgit,
  stdenv,
}:
with self; let
  skiaSrc = skia.src;
in
  ap2.buildArdosRustPackage {
    pname = "shift";
    version = "0.1.0-alpha";

    src = ../../modules/shift;

    cargoExtraArgs = "-p shift";

    nativeBuildInputs =
      [
        pkg-config
      ]
      ++ (with ap2.crossPkgs.pkgsBuildTarget; [
        clang

        gn
        ninja
      ])
      ++ (with ap2.buildPkgs; [
        python3
      ]);

    buildInputs = [
      skia
      libdrm
      libevdev
      mtdev
      libwacom
      libudev
      libinput
      libglvnd
      freetype2
      mesa
      libdrm
      expat
      mtdev
      libpng
      libwacom
      glib
      libffi
      libgudev
      glib.passthru.pcre2
      zlib
    ];
    # Ensure ld.bfd can resolve transitive dependencies of shared libraries
    NIX_LDFLAGS = lib.concatMapStringsSep " " (dep: "-L${dep}/lib -rpath-link ${dep}/lib") [
      freetype2
      libpng
      expat
      libdrm
      mtdev
      libevdev
      libwacom
      glib
      libffi
      libgudev
      glib.passthru.pcre2.out
      zlib
    ];

    preBuild = ''
      # From: https://github.com/NixOS/nixpkgs/blob/1fab95f5190d087e66a3502481e34e15d62090aa/pkgs/applications/networking/browsers/firefox/common.nix#L247-L253
      # Set C flags for Rust's bindgen program. Unlike ordinary C
      # compilation, bindgen does not invoke $CC directly. Instead it
      # uses LLVM's libclang. To make sure all necessary flags are
      # included we need to look in a few places.
      export BINDGEN_EXTRA_CLANG_ARGS="$(< ${stdenv.cc}/nix-support/libc-crt1-cflags) \
        $(< ${stdenv.cc}/nix-support/libc-cflags) \
        $(< ${stdenv.cc}/nix-support/cc-cflags) \
        $(< ${stdenv.cc}/nix-support/libcxx-cxxflags) \
        ${lib.optionalString stdenv.cc.isClang "-idirafter ${stdenv.cc.cc}/lib/clang/${lib.getVersion stdenv.cc.cc}/include"} \
        ${lib.optionalString stdenv.cc.isGNU "-isystem ${stdenv.cc.cc}/include/c++/${lib.getVersion stdenv.cc.cc} -isystem ${stdenv.cc.cc}/include/c++/${lib.getVersion stdenv.cc.cc}/${stdenv.hostPlatform.config}"}
      "
    '';
    LIBCLANG_PATH = "${ap2.buildPkgs.libclang.lib}/lib";
    SKIA_SOURCE_DIR = "${skiaSrc}";
    SKIA_LIBRARY_SEARCH_PATH = "${skia}/lib";
    SKIA_LINK_DYLIB = "1";
    SKIA_GN_COMMAND = "gn";
    SKIA_NINJA_COMMAND = "ninja";
    SKIA_GN_ARGS = "skia_use_fontconfig=false";

    runtimeLayout = [
      {
        source = "bin/shift";
        target = "/ardos/graphics/shift";
      }
    ];
  }
