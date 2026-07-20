{ self }:

# The kernel build tree for external module development.
# Produced by the kernel's `make all`, which builds everything including Rust
# .rmeta files. The headers output mirrors the Arch linux-headers package.
self.kernel.headers
