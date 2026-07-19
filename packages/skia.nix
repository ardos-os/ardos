{ mkArdosDerivation, ap2, self, fetchgit, lib, patchelf, file }:

with self;

let
  skiaCommit = "e73bf24d015ecdc62450e94418664d1151fc2ebf";
  icu = (ap2.wrapDerivation ap2.crossPkgs.icu {
    runtimeLayout = [
      { source = "lib/"; target = "/ardos/core"; }
    ];
  });

in
mkArdosDerivation {
  pname = "skia";
  version = "0.91.0";
  src = fetchgit {
    url = "https://github.com/rust-skia/skia.git";
    rev = skiaCommit;
    hash = "sha256-wDbQ6JkV3Kahz/WsOTE6mLpI4cPfKKy8a3IpQ3b1uDY=";
  };

  nativeBuildInputs = with ap2.crossPkgs.pkgsBuildTarget; [
    gn ninja python3 clang pkg-config
  ] ++ (with ap2.buildPkgs; [ stdenv.cc patchelf file ]);

  buildInputs = [
    freetype2
    expat
    libpng
    icu
    harfbuzz
  ];


  postPatch = ''
    substituteInPlace BUILD.gn \
      --replace-fail 'rebase_path("//bin/gn")' '"gn"'
    # System zlib detection bug workaround
    substituteInPlace BUILD.gn \
      --replace-fail '"//third_party/zlib",' ""
    substituteInPlace modules/skparagraph/BUILD.gn \
      --replace-fail 'complete_static_lib = false' ""
  '';

  strictDeps = true;
  gnFlags = [
    ''is_official_build=true''
    ''is_debug=false''
    ''is_component_build=true''
    ''skia_enable_ganesh=true''
    ''skia_enable_skottie=false''
    ''skia_enable_pdf=false''
    ''skia_enable_svg=false''
    ''skia_use_gl=true''
    ''skia_use_egl=false''
    ''skia_use_x11=false''
    ''skia_use_vulkan=false''
    ''skia_use_metal=false''
    ''skia_use_direct3d=false''
    ''skia_use_libjpeg_turbo_decode=false''
    ''skia_use_libjpeg_turbo_encode=false''
    ''skia_use_libwebp_decode=false''
    ''skia_use_libwebp_encode=false''
    ''skia_use_dng_sdk=false''
    ''skia_use_piex=false''
    ''skia_use_wuffs=false''
    ''skia_use_freetype=true''
    ''skia_use_fontconfig=false''
    ''skia_use_system_freetype2=true''
    ''extra_cflags=["-I${freetype2}/include/freetype2","-I${harfbuzz}/include/harfbuzz"]''
    ''extra_ldflags=["-Wl,-rpath,/ardos/core","-Wl,-rpath,/ardos/lib"]''
  ];

  installPhase = ''
    runHook preInstall
    patchelf --set-rpath "/ardos/core:/ardos/lib" "libskia.so"

    # Libraries
    mkdir -p $out/lib
    cp *.so *.a $out/lib

    # Includes
    pushd ../../include
    find . -name '*.h' -exec install -Dm644 {} $out/include/skia/{} \;
    popd
    pushd ../../modules
    find . -name '*.h' -exec install -Dm644 {} $out/include/skia/modules/{} \;
    popd

    # Pkg-config
    mkdir -p $out/lib/pkgconfig
    cat > $out/lib/pkgconfig/skia.pc <<'EOF'
    prefix=${placeholder "out"}
    exec_prefix=''${prefix}
    libdir=''${prefix}/lib
    includedir=''${prefix}/include/skia
    Name: skia
    Description: 2D graphic library for drawing text, geometries and images.
    URL: https://skia.org/
    Version: 0
    Libs: -L''${libdir} -lskia
    Cflags: -I''${includedir}
    EOF

    runHook postInstall
  '';

  preFixup = ''
    # Some skia includes are assumed to be under an include sub directory by
    # other includes
    for file in $(grep -rl '#include "include/' $out/include); do
      substituteInPlace "$file" \
        --replace-fail '#include "include/' '#include "'
    done
  '';

  runtimeLayout = [
    { source = "lib/"; target = "/ardos/core/"; }
  ];
}
