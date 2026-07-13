# Ardos OS

Ardos OS is a Linux-based operating system designed as an integrated platform rather than a collection of independently developed components. It aims to bring the coherence of a commercial OS to the open source desktop without breaking compatibility with existing Linux applications.

## Philosophy

- **Convention over configuration.** The system works well with sensible defaults. Advanced customization exists but is never required for basic tasks.
- **Complete abstractions.** A component should handle its domain fully rather than leaving gaps that require manual workarounds.
- **Consumer first, developer second.** Normal users never see a terminal. Developer mode (inspired by Android's) is an explicit opt-in that provides the SDK and tools.
- **Existing software runs unmodified.** GTK, Qt, Electron, Chrome, and any Linux-native binary work on Ardos. Native APIs exist for deeper integration but are never required.
- **Bridges, not walls.** Ardos doesn't force developers to adopt its native APIs. D-Bus translation layers, Qt theme bridges, and GTK CSS injection ensure the existing ecosystem runs unchanged.

## Origin

The project started with TIBS (Tiago's Incredible Boot Screen), a GPU-accelerated boot splash and login screen built to replace Plymouth. TIBS connected directly to DRM, rendered with Skia on OpenGL, and queried systemd over D-Bus for real boot progress. The TTY model made smooth transitions impossible, which led to Shift, which led to rethinking the entire stack.

## Current Status (mid-2026)

Early development. The build pipeline produces a bootable QEMU image. The system boots to a first-stage init that mounts the SquashFS root and tests the runtime. It does not yet reach a graphical desktop.

### What exists and works

| Component | Description | Status |
|---|---|---|
| **motherboardm** | Kernel module for IPC. Atomic messages, reactive stores (Svelte-inspired), kernel-attested caller identity, async latch FDs for tokio integration. ~4x faster than D-Bus. | Working prototype |
| **cargo-nok** | Cargo plugin for building Rust kernel modules without Kbuild/Makefiles. Supports x86_64, arm64, RISC-V 64, LoongArch 64. | Working |
| **Shift** | Graphical session multiplexer. Owns DRM/KMS directly, manages Wayland compositors as isolated sessions, handles session auth, input routing, DMA-BUF buffer composition with Skia. | Working, missing audio isolation and some input edge cases |
| **TAB protocol** | IPC between Shift and its clients. Header+JSON payload over SOCK_SEQPACKET, explicit buffer ownership model, DMA-BUF sharing, acquire/release fences. | Working |
| **tab-client** | Client library for TAB with C bindings for compositor integration. | Working |
| **tab-app-framework** | Rust framework for building direct-TAB applications (GLFW-like). Core runtime, OpenGL/EGL context management, XKB keyboard handling, monitor layout engine. | Working |
| **midl** | Interface definition language for motherboardm services. Generates typed async clients, server stubs, store subscriptions, and anonymous stores with per-subscription authorization from a single .midl file. | Experimental prototype |
| **ardos-packer** | Rust-based build tool that reads a manifest, fetches/compiles packages, assembles the SquashFS image, compiles the kernel, builds initramfs, and runs QEMU. | Working |
| **ardos-packer2** | Nix-based rewrite for reproducibility and cross-compilation. Treats Ardos as its own target triple (`<arch>-ardos-linux-gnu`). RPATH translation, shebang rewriting, runtime layout declarations. | In progress |
| **init-stage-1** | Minimal init in Rust (musl, zero dependencies). Mounts SquareFS root, performs switch_root. | Working (exits after basic test) |

### What's being built

- **TIBS** — Login screen, boot splash, administrative Shift client
- **ardos-wm** — Wayland compositor forked from Hyprland with TAB integration (external repo)
- **Permission system** — Hybrid kernel/userspace. Motherboardm holds a table of (caller_identity, service, method) → allow/deny. A userspace policy service updates the table dynamically. Syscall interception for filesystem access (not namespace-based sandboxing — apps see the real filesystem tree but permission checks happen at the syscall level).
- **Theme engine** — `tailwind-config.css` declares design tokens (colors, fonts, spacing). `theme.toml` maps Tailwind utility classes to UI components. An engine parses both, distributes resolved tokens through a motherboardm store, and each toolkit (Ardos UI, Qt, GTK) translates them natively. Reactive: change a token → store update → all apps notified.
- **D-Bus compatibility layer** — Translation shim that sits on the motherboardm bus and exposes the standard D-Bus socket, so existing D-Bus-dependent apps run unmodified.
- **App distribution** — Developers host their own app packages on their own servers. The store is a discovery layer, not a gatekeeper. Installation: download → verify → approve permissions → done. Updates come from the developer's server automatically.
- **Ardos UI** — Native widget toolkit on TAB, rendered with Skia. The widgets get theme values directly from the motherboardm store — no translation layer needed.

### Planned

- **Ardos Registry** — Centralized configuration replacing dotfiles
- **Ardos Init** — Second-stage init that starts system services
- **Windows compatibility layer** — Wine-based, integrated
- **WASM app runtime** — Optional lightweight runtime for system apps

## Architecture

The boot flow:
```
UEFI → Limine → Kernel → initramfs (init-stage-1) → SquashFS root → Shift → ardos-wm → apps
```

Shift sits below Wayland compositors. It owns DRM/KMS, input (libinput), session authentication, and buffer composition. Each compositor runs as an isolated session that Shift can switch between with animations.

Motherboardm (the kernel module) provides the IPC backbone. Apps communicate with system services through atomic FunctionCall messages over ioctl. Services expose reactive stores that clients can subscribe to — when a store updates, all subscribers are notified automatically. Caller identity is attested by the kernel and cannot be forged.

The permission system uses motherboardm's kernel-attested identities. When an app makes a FunctionCall, the kernel checks a permission table before routing. A userspace policy service updates the table dynamically. Filesystem permissions work through a syscall interceptor — apps see the real filesystem but operations are checked against the current policy.

## Design Decisions

### No terminal for normal workflows

The terminal is hidden by default. Developer mode (Android-style, hidden toggle) reveals it along with the SDK. Consumer tasks never require command-line interaction.

### No container-based sandboxing

Apps see the real filesystem. Permission enforcement happens at the syscall level through a kernel module, not through mount namespaces or bubblewrap-style filesystem masking. File pickers show real paths, not portal-mediated views.

### Target triple: `<arch>-ardos-linux-gnu`

The vendor field is `ardos`, not `unknown`. This allows:
- `target_os = "linux"` still matches for ecosystem compatibility
- `target_vendor = "ardos"` enables Ardos-specific conditional compilation
- The toolchain encodes correct paths, linker settings, and defaults for the platform

### Custom Rust toolchain for kernel modules

`cargo-nok` builds kernel modules through Cargo instead of Kbuild, giving access to the full Rust crate ecosystem (serde, postcard, hashbrown, smolstr) inside kernel code.

## Key Crates and Technologies

- **Rust** — Primary language for all new components (kernel modules, userspace services, build tools)
- **Tokio** — Async runtime for userspace services and Shift
- **Skia** — 2D rendering for Shift and Ardos UI
- **Postcard** — Binary serialization for motherboardm IPC
- **Nix** — Build system and package management for ardos-packer2
- **Mesa / DRM / KMS / libinput / GBM** — Graphics and input stack
- **glibc** — System C library (reduced build with hardening)

## ardos-packer2 Build APIs

These are the APIs exposed to packages in `packages/*.nix` via `callPackage`. Every package receives `ap2` (the build instance), `self` (all other packages), and has `crossPkgs`/`buildPkgs` in scope through the `callPackage` scope.

### Package sets

- **`crossPkgs`** — Nixpkgs cross-compiled for the Ardos target (`x86_64-ardos-linux-gnu`). Every package here runs on the target. This is where you find `crossPkgs.stdenv`, `crossPkgs.glibc`, `crossPkgs.zlib`, `crossPkgs.clangStdenv`, etc. Use for all target-compiled dependencies.

- **`buildPkgs`** — Native (build-machine) nixpkgs. Use for tools that run during the build: `buildPkgs.cargo`, `buildPkgs.rustc` (when needed as a build tool), `buildPkgs.python3`, `buildPkgs.clangStdenv`, `buildPkgs.llvmPackages_22.tblgen`, etc.

- **`crossPkgs.pkgsBuildTarget`** — Cross packages oriented for the build-to-target toolchain. Use for native tools that produce target output: `crossPkgs.pkgsBuildTarget.cmake`, `crossPkgs.pkgsBuildTarget.meson`, `crossPkgs.pkgsBuildTarget.ninja`, `crossPkgs.pkgsBuildTarget.rustc`.

- **`crossPkgs.pkgsBuildBuild`** — Build-to-build packages. Use for tools that run on the build machine and produce build-machine output: `crossPkgs.pkgsBuildBuild.cargo`.

**Rule of thumb:** If it runs during the build, it goes in `nativeBuildInputs` and comes from `buildPkgs` or `crossPkgs.pkgsBuildTarget` or `crossPkgs.pkgsBuildBuild`. If it's a library linked into the target binary, it goes in `buildInputs` and comes from `crossPkgs`.

### `mkArdosDerivation`

```nix
{ mkArdosDerivation, ap2, self }:
mkArdosDerivation {
  pname = "my-package";
  version = "1.0";
  src = ...;
  nativeBuildInputs = [ ... ];
  buildInputs = [ ... ];
  cmakeFlags = [ ... ];
  runtimeLayout = [
    { source = "lib/"; target = "/ardos/core/"; }
    { source = "lib/pkgconfig/"; target = "/dev/null"; }
  ];
}
```

The main package builder. Wraps `crossPkgs.stdenv.mkDerivation` with Ardos-specific plumbing:

1. **RPATH translation** — Injects `ardos_ld_translate` (compiled Rust binary) that rewrites `-rpath /nix/store/...` to `-rpath /ardos/...` at link time. Also emits `-rpath-link` for all mapped directories so `ld.bfd` can resolve transitive dependencies.

2. **Runtime layout** — The `runtimeLayout` attribute (list of `{ source, target }`) is written to `$out/nix-support/ardos-layout`. Sources ending with `/` are folder mappings (contents are expanded, not the directory itself). The sysroot assembly reads this file to know which parts of `$out` to copy into the ROM and where. Use `target = "/dev/null"` to explicitly exclude a directory from the ROM.

3. **Setup hook** — Every `mkArdosDerivation` automatically gets the ardos-setup-hook injected into `nativeBuildInputs`. This hook: creates the runtime map file, calls `populate-map.rs` to aggregate dependency layouts, calls `generate-layout.rs` for packages without explicit `runtimeLayout`, and translates shebangs.

4. **Patchelf disabled** — `dontPatchELF = true` and `dontShrinkRpath = true` are set automatically. The ld-wrapper handles RPATH instead, so patchelf would interfere.

5. **`passthru.ardos`** — The original `runtimeLayout` is stored in `passthru.ardos.runtimeLayout` for introspection.

### `mkArdosDerivationClang`

Identical to `mkArdosDerivation` but uses `crossPkgs.clangStdenv` instead of `crossPkgs.stdenv`. Required for packages that need clang as the cross compiler (e.g. BPF programs compiled with `clang -target bpf`, which bypasses the Nix compiler wrapper).

### `wrapDerivation`

```nix
ap2.wrapDerivation someDrv {
  runtimeLayout = [
    { source = "lib/"; target = "/ardos/graphics/"; }
    { source = "lib/pkgconfig"; target = "/dev/null"; }
  ];
}
```

Takes an existing derivation (usually from nixpkgs) and attaches Ardos runtime layout metadata. The derivation is rebuilt via `overrideAttrs` to:
- Inject the ld-wrapper and rpath translation hooks
- Generate `$out/nix-support/ardos-layout` in `postInstall`
- Copy the runtime map file

Use this for nixpkgs packages that need to enter the ROM but don't use `mkArdosDerivation`. The original derivation's build logic is preserved unchanged — only the Ardos plumbing is added.

**When to use:** Wrapping nixpkgs packages that are dependencies of Ardos packages and need runtime layout (e.g. `libva-minimal` wrapped to add our `libdrm` and a runtime layout).

**When NOT to use:** Build-time-only tools (compilers, build systems, code generators). These don't need runtime layout and shouldn't be wrapped.

### `buildArdosRustPackage`

```nix
ap2.buildArdosRustPackage {
  pname = "my-rust-tool";
  version = "0.1.0";
  src = ...;
  cargoSha256 = ...;
  runtimeLayout = [ { source = "bin/"; target = "/ardos/bin/"; } ];
}
```

Convenience wrapper around `craneLib.buildPackage` + `wrapDerivation`. Builds a Rust package with Crane and automatically attaches Ardos runtime layout.

### Dependency patterns

**Static linking (preferred for transitive deps):** If a library is an implementation detail and not part of the platform API, prefer static linking. Static `.a` libraries do NOT need `runtimeLayout` — they're consumed at link time and disappear into the final binary.

**Shared libraries (platform API):** If a library is part of the platform (e.g. `libdrm`, `libglvnd`), use shared linking and declare `runtimeLayout` so the sysroot knows where to put the `.so` files in the ROM.

**`ARDOS_EXTERNAL_LDFLAGS`:** For linking against libraries not in the standard search path. Example: `ARDOS_EXTERNAL_LDFLAGS = "-L${llvm-mesa}/lib/llvm-mesa/lib -Wl,-rpath,/ardos/llvm-mesa/lib";`. The ld-wrapper translates these to Ardos runtime paths automatically.

**`ARDOS_EXTERNAL_CFLAGS`:** Same as above but for header include paths.

**`PKG_CONFIG_PATH`:** For packages that use pkg-config. Point to the `.pc` file's parent directory in the store.

## Communication Style

Be direct, technical, and grounded. Avoid aspirational language. When describing components, distinguish clearly between what exists and what's planned. The project's strength is that the code speaks for itself.

## Glossary

- MVP of <x>: it means Minimal Viable Package, it's a term used to describe the most minimal and lightweight version of a library to satisfy a requirement of another dependent package. The main goal is to reduce transitive dependencies, points of failure and build time.
