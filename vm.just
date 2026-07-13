# Build the VM derivation
build:
    #!/usr/bin/env bash
    nom build .#vm

# Run the VM in QEMU
run:
    #!/usr/bin/env bash
    nix run .#vm --log-format internal-json -v --max-jobs auto |& nom --json
