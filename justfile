arch := `uname -m | case "$(cat)" in (x86_64) echo "x86_64-linux";; (aarch64) echo "aarch64-linux";; (arm64) echo "aarch64-linux";; (*) echo "$(cat)-linux";; esac`

mod vm

# Build a specific package (or any flake output)
build pkg:
    #!/usr/bin/env bash

    nom build .#{{pkg}} --no-link

# Build the ROM image (all packages assembled into squashfs)
rom:
    #!/usr/bin/env bash
    nom build .#rom --no-link

# Build the kernel
kernel:
    #!/usr/bin/env bash
    nom build .#kernel --no-link

# Build the initramfs
initrd:
    #!/usr/bin/env bash
    nom build .#initrd --no-link

# Build the sysroot (assembled runtime tree)
sysroot:
    #!/usr/bin/env bash
    nom build .#sysroot --no-link
