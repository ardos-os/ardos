#!/bin/sh
set -eu

: "${SYSROOT:?SYSROOT env var is required}"

# Runtime mountpoints required by init-stage-1 after switching to the read-only squashfs root.
mkdir -p "$SYSROOT/dev" "$SYSROOT/proc" "$SYSROOT/sys" "$SYSROOT/run" "$SYSROOT/tmp"
chmod 755 "$SYSROOT/dev" "$SYSROOT/proc" "$SYSROOT/sys" "$SYSROOT/run"
chmod 1777 "$SYSROOT/tmp"

# Remove dev-only files from the sysroot (runtime image)
rm -rf "$SYSROOT/usr/include" "$SYSROOT/include" 2>/dev/null || true
rm -rf "$SYSROOT/usr/lib/pkgconfig" "$SYSROOT/usr/lib64/pkgconfig" "$SYSROOT/usr/share/pkgconfig" 2>/dev/null || true
rm -rf "$SYSROOT/usr/share/man" 2>/dev/null || true
rm -rf "$SYSROOT/usr/lib/systemd" 2>/dev/null || true

# Optional extra debloat (safe for runtime-only images)
rm -rf "$SYSROOT/usr/share/info" "$SYSROOT/usr/share/doc" "$SYSROOT/usr/share/gtk-doc" 2>/dev/null || true
rm -rf "$SYSROOT/usr/lib/cmake" "$SYSROOT/usr/share/aclocal" 2>/dev/null || true
rm -rf "$SYSROOT/usr/share/gir-1.0" "$SYSROOT/usr/lib/girepository-1.0" 2>/dev/null || true
rm -rf "$SYSROOT/usr/lib/llvm-mesa/include" "$SYSROOT/usr/lib/llvm-mesa/share" 2>/dev/null || true
rm -rf "$SYSROOT/usr/lib/skia/source" "$SYSROOT/usr/lib/skia/skia-defines.txt" 2>/dev/null || true

# Drop static/libtool artifacts
find "$SYSROOT/usr/lib" "$SYSROOT/usr/lib64" -type f \( -name '*.a' -o -name '*.la' \) -delete 2>/dev/null || true

# Mesa keeps broad graphics/Vulkan support, but OpenCL/Rusticl pulls in libclang at runtime.
# Remove it until OpenCL is a product requirement.
rm -f "$SYSROOT/usr/lib/libRusticlOpenCL.so"* 2>/dev/null || true
rm -f "$SYSROOT/etc/OpenCL/vendors/rusticl.icd" 2>/dev/null || true
rm -f "$SYSROOT/usr/lib/llvm-mesa/lib/libclang"* 2>/dev/null || true
rm -f "$SYSROOT/usr/lib/llvm-mesa/lib/libLTO"* "$SYSROOT/usr/lib/llvm-mesa/lib/libRemarks"* 2>/dev/null || true
rm -rf "$SYSROOT/usr/lib/llvm-mesa/lib/clang" "$SYSROOT/usr/lib/llvm-mesa/lib/libscanbuild" "$SYSROOT/usr/lib/llvm-mesa/lib/libear" 2>/dev/null || true
rm -rf "$SYSROOT/usr/lib/llvm-mesa/libexec" 2>/dev/null || true

rm  "$SYSROOT"/usr/bin/{unxz,unlz4,unzstd,unlzma} -f
rm  $SYSROOT/usr/bin/fancontrol \
    $SYSROOT/usr/bin/healthd \
    $SYSROOT/usr/bin/isadump \
    $SYSROOT/usr/bin/isaset \
    $SYSROOT/usr/bin/pwmconfig \
    $SYSROOT/usr/bin/sensord \
    $SYSROOT/usr/bin/sensors \
    $SYSROOT/usr/bin/sensors-conf-convert \
    $SYSROOT/usr/bin/sensors-detect -f
rm  $SYSROOT/usr/bin/zstd* $SYSROOT/usr/bin/xz* $SYSROOT/usr/bin/lzma* "$SYSROOT"/usr/bin/{lz4,lz4c,lz4cat,lzcat,lzcmp,lzdiff,lzegrep,lzfgrep,lzgrep,lzmore} -f
rm  $SYSROOT/usr/bin/spirv-* -f
rm  $SYSROOT/usr/bin/mtrace -f
rm  $SYSROOT/usr/bin/pwmconfig -f
rm  $SYSROOT/usr/bin/pzstd -f
rm  $SYSROOT/usr/bin/llvm-spirv -f
rm  $SYSROOT/usr/bin/wayland-scanner -f
rm  "$SYSROOT"/usr/bin/{gapplication,gdbus,gi-compile-repository,gio,glib-compile-resources,glib-compile-schemas,gsettings} -f
rm  "$SYSROOT"/usr/bin/{pcre2grep,pcre2test} -f
rm  "$SYSROOT"/usr/bin/{brotli,bzip2,bzip2recover,bzdiff,bzgrep,bzmore} -f
rm  "$SYSROOT"/usr/bin/{png-fix-itxt,png2pnm,pngfix,pnm2png,libpng16-config} -f
rm  "$SYSROOT"/usr/bin/{fc-cache,fc-cat,fc-conflist,fc-list,fc-match,fc-pattern,fc-query,fc-scan,fc-validate} -f
rm  "$SYSROOT"/usr/bin/{libevdev-tweak-device,libwacom-list-devices,libwacom-list-local-devices,libwacom-show-stylus,libwacom-update-db,mouse-dpi-tool,mtdev-test,touchpad-edge-detector} -f
rm  "$SYSROOT"/usr/bin/xkbcli -f
rm  "$SYSROOT"/usr/lib/libxkbregistry.so* -f
rm  "$SYSROOT"/usr/lib/xkbcommon -rf
rm  "$SYSROOT"/usr/bin/{gi-decompile-typelib,gi-inspect-typelib,gio-querymodules,glib-gettextize,gobject-query} -f
rm  "$SYSROOT"/usr/bin/{di-edid-decode,gencat,getconf,getent,iconv,iconvconfig,ldd,locale,localedef,makedb,pcprofiledump,sotruss,sprof,xmlwf,pcre2-config} -f
rm  "$SYSROOT"/usr/bin/{mesa-overlay-control.py,mesa-screenshot-control.py,spirv2dxil} -f
rm  "$SYSROOT"/usr/lib/libgio-2.0.so* -f
rm  $SYSROOT/usr/share/licenses -rf
