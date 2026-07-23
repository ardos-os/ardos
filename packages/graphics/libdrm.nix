{
  mkArdosDerivation,
  ap2,
  self,
}:
with self; let
  # 1. Set datadir_amdgpu to the runtime path so the binary gets compiled
  #    with /ardos/graphics/libdrm/amdgpu.ids hardcoded.
  # 2. Patch data/meson.build to install to a relative path (share/libdrm)
  #    so meson respects DESTDIR during installation.
  amdgpuDatadirPatch = builtins.toFile "libdrm-amdgpu-datadir.patch" ''
    --- a/amdgpu/meson.build
    +++ b/amdgpu/meson.build
    @@ -19,7 +19,8 @@
     # SOFTWARE.


    -datadir_amdgpu = join_paths(get_option('prefix'), get_option('datadir'), 'libdrm')
    +# Runtime path — compiled into libdrm_amdgpu.so as AMDGPU_ASIC_ID_TABLE
    +datadir_amdgpu = '/ardos/graphics/libdrm'

     libdrm_amdgpu = library(
       'drm_amdgpu',
    --- a/data/meson.build
    +++ b/data/meson.build
    @@ -21,7 +21,7 @@
     if with_amdgpu
       install_data(
         'amdgpu.ids',
         install_mode : 'rw-r--r--',
    -    install_dir : datadir_amdgpu,
    +    install_dir : join_paths(get_option('datadir'), 'libdrm'),
       )
     endif
  '';
in
  mkArdosDerivation {
    pname = "libdrm";
    version = "2.4.131";
    src = builtins.fetchurl {
      url = "https://dri.freedesktop.org/libdrm/libdrm-2.4.131.tar.xz";
      sha256 = "1m8pyv2l7mbkf1wy54b3dsvm7f8ksf0xwm6nlc36928wnn1rkfj5";
    };

    patches = [amdgpuDatadirPatch];

    nativeBuildInputs = with ap2.crossPkgs.pkgsBuildTarget; [meson ninja pkg-config];
    buildInputs = [libpciaccess];

    mesonFlags = [
      "-Dudev=false"
      "-Detnaviv=disabled"
      "-Dfreedreno=disabled"
      "-Dman-pages=disabled"
      "-Dvc4=disabled"
      "-Dinstall-test-programs=false"
      "-Dcairo-tests=disabled"
      "-Dvalgrind=disabled"
    ];

    postInstall = ''
      rm -rf $out/lib/*.a
      rm -rf $out/share/man $out/share/doc
    '';

    runtimeLayout = [
      {
        source = "lib/";
        target = "/ardos/core/";
      }
      {
        source = "lib64/";
        target = "/ardos/core/";
      }
      {
        source = "lib/pkgconfig/";
        target = "/dev/null";
      }
      {
        source = "share/libdrm/";
        target = "/ardos/graphics/libdrm/";
      }
    ];
  }
