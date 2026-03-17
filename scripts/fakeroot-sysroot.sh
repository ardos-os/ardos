#!/bin/sh
set -eu

: "${SYSROOT:?SYSROOT env var must be set}"

# Hook executed inside `fakeroot` right before `mksquashfs`.
#
# Default: no-op.
# Customize here if you need to adjust ownership/permissions for specific paths
# (these changes affect only the fakeroot namespace and the resulting squashfs metadata).
