{ mkArdosDerivation, ap2, self, lib, fetchurl, fetchFromGitHub }:

with self;

# Nixpkgs llvm derivations are some really convoluted shit
# Why can't they make straightforward code like this?
# The way they structured their derivations is just being dishonest about the dependency graph
# Of mesa and llvm
#
# We separate clearly separate what are runtime dependencies and what are build dependencies
# While nixpkgs makes spaghetti code trying to mix the 2

let
  llvmVersion = "21.1.8";
  spirvTranslatorVersion = "21.1.0";
  mesaVersion = "26.0.2";

  # ---------------------------------------------------------------------------
  # Sources
  # ---------------------------------------------------------------------------

  llvmSrc = fetchurl {
    url = "https://github.com/llvm/llvm-project/releases/download/llvmorg-${llvmVersion}/llvm-project-${llvmVersion}.src.tar.xz";
    hash = "sha256-RjOiNhf6MaPqUSQlhup/sdpxQOQmvWL8FkJh/gNqoUI=";
  };

  mesaSrc = fetchurl {
    url = "https://archive.mesa3d.org/mesa-${mesaVersion}.tar.xz";
    hash = "sha256-lz9TUiG+IRxjY4QrTM6e+Omz4dXqhsVFDKhgYBY8c0Y=";
  };

  spirvTranslatorSrc = builtins.fetchurl {
    url = "https://github.com/KhronosGroup/SPIRV-LLVM-Translator/archive/refs/tags/v${spirvTranslatorVersion}.tar.gz";
    sha256 = "sha256:0w51a0614pgrzr0b9kylxa9j8034i4rxp040q6xsw7bkdjh1jw2g";
  };

  # ---------------------------------------------------------------------------
  # Common LLVM cmake flags (apply to every LLVM build)
  # ---------------------------------------------------------------------------

  commonLLVMFlags = [
    "-DCMAKE_BUILD_TYPE=Release"

    "-DLLVM_ENABLE_RTTI=ON"

    # PIC — Mesa builds shared .so drivers
    "-DLLVM_ENABLE_PIC=ON"

    # Static libraries (embedded into Mesa binaries, no runtime .so needed)
    "-DBUILD_SHARED_LIBS=OFF"
    "-DLLVM_BUILD_LLVM_DYLIB=OFF"
    "-DLLVM_LINK_LLVM_DYLIB=OFF"

    # Strip optional deps that add runtime requirements on target
    "-DLLVM_ENABLE_ZLIB=OFF"
    "-DLLVM_ENABLE_ZSTD=OFF"
    "-DLLVM_ENABLE_LIBXML2=OFF"
    "-DLLVM_ENABLE_LIBEDIT=OFF"
    "-DLLVM_ENABLE_LIBPFM=OFF"
    "-DLLVM_ENABLE_FFI=OFF"

    # Don't build things Mesa never uses
    "-DLLVM_ENABLE_ASSERTIONS=OFF"
    "-DLLVM_ENABLE_LTO=OFF"
    "-DLLVM_INCLUDE_DOCS=OFF"
    "-DLLVM_BUILD_DOCS=OFF"
    "-DLLVM_INCLUDE_RUNTIMES=OFF"
    "-DLLVM_BUILD_RUNTIMES=OFF"
    "-DLLVM_INCLUDE_EXAMPLES=OFF"
    "-DLLVM_INCLUDE_BENCHMARKS=OFF"
    "-DLLVM_BUILD_BENCHMARKS=OFF"
    "-DLLVM_INCLUDE_TESTS=OFF"
    "-DLLVM_ENABLE_BINDINGS=OFF"
    "-DLLVM_ENABLE_OCAMLDOC=OFF"
  ];


  # ---------------------------------------------------------------------------
  # 2. SPIRV-LLVM-Translator  (native — for libmesaclc)
  # ---------------------------------------------------------------------------

  spirvTranslator = ap2.buildPkgs.stdenv.mkDerivation {
    pname = "spirv-llvm-translator-mesa";
    version = spirvTranslatorVersion;
    src = spirvTranslatorSrc;

    nativeBuildInputs = with ap2.buildPkgs; [ cmake ninja pkg-config spirv-tools.dev ];
    buildInputs = [ llvmCross ];

    cmakeFlags = [
      "-DCMAKE_INSTALL_PREFIX=${placeholder "out"}"
      "-DLLVM_DIR=${llvmCross}/lib/cmake/llvm"
      "-DLLVM_SPIRV_BUILD_EXTERNAL=YES"
      "-DLLVM_EXTERNAL_SPIRV_HEADERS_SOURCE_DIR=${ap2.buildPkgs.spirv-headers}"
      "-DBUILD_SHARED_LIBS=OFF"
      "-DLLVM_INCLUDE_TESTS=OFF"
      "-DBASE_LLVM_VERSION=${llvmVersion}"
    ];

    strictDeps = true;
  };

  # ---------------------------------------------------------------------------
  # 4. Cross LLVM  (target machine — for Mesa runtime JIT/AOT)
  # ---------------------------------------------------------------------------

  llvmArchTable = {
    "x86_64" = "X86";
    "aarch64" = "AArch64";
  };

  llvmCross = mkArdosDerivation {
    pname = "llvm-mesa-target";
    version = llvmVersion;
    src = llvmSrc;

    nativeBuildInputs = with ap2.buildPkgs; [ cmake ninja python3 gcc tree ];
    preConfigure = "cd llvm";

    cmakeFlags = commonLLVMFlags ++ [
      "-DCMAKE_INSTALL_PREFIX=${placeholder "out"}"

      "-DLLVM_TARGETS_TO_BUILD=${llvmArchTable.${ap2.crossPkgs.stdenv.targetPlatform.cpu}};AMDGPU"

      # Only need the libraries + llvm-config for Mesa; skip everything else
      "-DLLVM_INCLUDE_TOOLS=ON"
      "-DLLVM_INCLUDE_UTILS=OFF"
      "-DLLVM_BUILD_UTILS=OFF"
      (lib.cmakeBool "CMAKE_CROSSCOMPILING" true)
      (
        let
          nativeCC = ap2.buildPkgs.stdenv.cc;
          nativeBintools = nativeCC.bintools.bintools;
          nativeToolchainFlags = [
            (lib.cmakeFeature "CMAKE_C_COMPILER" "${nativeCC}/bin/${nativeCC.targetPrefix}cc")
            (lib.cmakeFeature "CMAKE_CXX_COMPILER" "${nativeCC}/bin/${nativeCC.targetPrefix}c++")
            (lib.cmakeFeature "CMAKE_AR" "${nativeBintools}/bin/${nativeBintools.targetPrefix}ar")
            (lib.cmakeFeature "CMAKE_STRIP" "${nativeBintools}/bin/${nativeBintools.targetPrefix}strip")
            (lib.cmakeFeature "CMAKE_RANLIB" "${nativeBintools}/bin/${nativeBintools.targetPrefix}ranlib")
          ];
          nativeInstallFlags = [
            (lib.cmakeFeature "CMAKE_INSTALL_PREFIX" (placeholder "out"))
            (lib.cmakeFeature "CMAKE_INSTALL_BINDIR" "${placeholder "out"}/bin")
            (lib.cmakeFeature "CMAKE_INSTALL_INCLUDEDIR" "${placeholder "out"}/include")
            (lib.cmakeFeature "CMAKE_INSTALL_LIBDIR" "${placeholder "out"}/lib")
            (lib.cmakeFeature "CMAKE_INSTALL_LIBEXECDIR" "${placeholder "out"}/libexec")
          ];
        in
        lib.cmakeOptionType "list" "CROSS_TOOLCHAIN_FLAGS_NATIVE" (
          lib.concatStringsSep ";" (
            lib.concatLists [
              nativeToolchainFlags
              nativeInstallFlags
            ]
          )
        )
      )
    ];
    postBuild = ''
      cmake --build NATIVE --target llvm-config -- -j$NIX_BUILD_CORES
    '';
    postInstall = ''
      tree NATIVE/
      cp NATIVE/bin/llvm-config ${placeholder "out"}/bin/llvm-config-native
    '';
  };

  # GPU drivers per architecture
  commonGalliumDrivers = [
    "crocus" "i915" "iris" "llvmpipe" "lima" "nouveau"
    "r300" "r600" "radeonsi" "tegra" "v3d" "vc4" "virgl" "svga" "zink"
  ];
  armGalliumDrivers = [ "freedreno" "panfrost" ];

  galliumDrivers = commonGalliumDrivers ++ lib.optionals (ap2.crossPkgs.stdenv.targetPlatform.isAarch64) armGalliumDrivers;
  driversPrefix = "/ardos/graphics/drivers";
  mesaRelPref = "ardos/graphics/drivers/mesa";
  mesaPrefix = "/"+mesaRelPref;
in

mkArdosDerivation {
  pname = "mesa";
  version = mesaVersion;
  src = mesaSrc;

  nativeBuildInputs = with ap2.buildPkgs; [
    meson ninja python3 pkg-config mesa.cross_tools
    llvmCross byacc bison flex gcc
  ] ++ (with python314Packages; [packaging mako pyyaml pycparser]);

  postPatch = ''
    patchShebangs .
    # Enable dril (DRI driver symlinks) without requiring X11/GLX.
    # The dril target produces *_dri.so symlinks needed by EGL-on-DRM.
    substituteInPlace src/meson.build \
      --replace-fail "if with_glx == 'dri' or with_platform_x11 or with_platform_xcb" "if true"
  '';

  buildInputs = [
    llvmCross
    ap2.crossPkgs.spirv-tools.dev
    ap2.crossPkgs.spirv-tools.lib
  ] ++ (with self; [
    libelf
    libdrm
    expat
    libglvnd
    libva
    zlib
    (ap2.wrapDerivation ap2.crossPkgs.libdisplay-info {

    runtimeLayout = [
        { source = "lib/"; target = "/ardos/graphics/"; }
        { source = "lib/pkgconfig/"; target = "/dev/null"; }
        { source = "lib/cmake/"; target = "/dev/null"; }
      ];
    })
    libudev
    libzstd
  ]);
  dontAddPrefix = true;

  mesonFlags = [
    "--prefix=${mesaPrefix}"
    "--libdir=lib"
    "--libexecdir=libexec"
    "--bindir=bin"
    "--sbindir=sbin"
    "--includedir=include"
    "--mandir=share/man"
    "--infodir=share/info"
    "--localedir=share/locale"

    "-Dgallium-drivers=${lib.concatStringsSep "," galliumDrivers}"
    "-Dvulkan-drivers="

    "-Dllvm=enabled"
    "-Dshared-llvm=disabled"
    "-Ddraw-use-llvm=true"
    "-Damd-use-llvm=true"

    "-Dmesa-clc=system"

    "-Dbuild-tests=false"
    "-Dvalgrind=disabled"
    "-Dlibunwind=disabled"
    "-Dlmsensors=disabled"
    "-Dmicrosoft-clc=disabled"
    "-Dplatforms="
    "-Dglx=disabled"
    "-Dxlib-lease=disabled"
    "-Dgallium-mediafoundation=disabled"
    "-Dandroid-libbacktrace=disabled"
    "-Degl=enabled"
    "-Dgbm=enabled"
    "-Dcpp_rtti=false"
  ];
  DESTDIR = placeholder "out";

  postInstall = ''
    mv $out/${mesaRelPref}/* $out/
    rm $out/ardos -r
    substituteInPlace $out/lib/pkgconfig/*.pc \
      --replace-fail "${mesaPrefix}" "$out"
    mkdir -p $out/share/glvnd/egl_vendor.d
    cat > $out/share/glvnd/egl_vendor.d/50_mesa.json <<EOF
{
    "file_format_version" : "1.0.0",
    "ICD" : {
        "library_path" : "${mesaPrefix}/lib/libEGL_mesa.so.0"
    }
}
EOF
  '';

  runtimeLayout = [
    { source = "./"; target = mesaPrefix+"/"; }
    { source = "share/glvnd"; target = "${driversPrefix}/glvnd"; }
    { source = "include/"; target = "/dev/null"; }
    { source = "lib/pkgconfig"; target = "/dev/null"; }
  ];
}
