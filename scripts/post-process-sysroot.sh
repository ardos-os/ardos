#!/bin/sh
set -eu

: "${SYSROOT:?SYSROOT env var is required}"

# Remove dev-only files from the sysroot (runtime image)
rm -rf "$SYSROOT/usr/include" "$SYSROOT/include" 2>/dev/null || true
rm -rf "$SYSROOT/usr/lib/pkgconfig" "$SYSROOT/usr/lib64/pkgconfig" "$SYSROOT/usr/share/pkgconfig" 2>/dev/null || true
rm -rf "$SYSROOT/usr/share/man" 2>/dev/null || true
rm -rf "$SYSROOT/usr/lib/systemd" 2>/dev/null || true

# Optional extra debloat (safe for runtime-only images)
rm -rf "$SYSROOT/usr/share/info" "$SYSROOT/usr/share/doc" "$SYSROOT/usr/share/gtk-doc" 2>/dev/null || true
rm -rf "$SYSROOT/usr/lib/cmake" "$SYSROOT/usr/share/aclocal" 2>/dev/null || true

# Drop static/libtool artifacts
find "$SYSROOT/usr/lib" "$SYSROOT/usr/lib64" -type f \( -name '*.a' -o -name '*.la' \) -delete 2>/dev/null || true

# FIXME: include libpng later so this layer works
rm -rf "$SYSROOT/usr/lib/libVkLayer_MESA_screenshot.so" 2>/dev/null || true
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
rm  $SYSROOT/usr/share/licenses -rf

