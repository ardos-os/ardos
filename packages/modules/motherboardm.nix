{ mkArdosDerivation, ap2, self }:

let
  kernelModules = import ../../kernel/modules.nix {
    inherit (ap2) buildPkgs;
    kernel = self.linux-headers;
    cargo-nok = self.cargo-nok;
  };

  # Vendor all dependencies including the git-patched serde_core so
  # `cargo nok build` can resolve crates offline in the sandbox.
  vendoredDeps = kernelModules.vendorDependencies {
    src = ../../modules/motherboard;
    manifestPath = "motherboardm/Cargo.toml";
  };
in
kernelModules.mkKernelModule {
  name = "motherboardm";

  src = ../../modules/motherboard;
  sourceRoot = ".";

  # motherboardm is excluded from the workspace and lives in a subdirectory.
  # The protocol crate is a path dependency at ../protocol, which is already
  # present in the source tree.
  cargoExtraArgs = "";

  vendorDependencies = vendoredDeps;

  passthru = {
    # Expose the .ko for loading from initrd or other system components.
    meta = {
      description = "motherboardm kernel-backed service bus for Linux IPC";
      license = ap2.buildPkgs.lib.licenses.gpl2Only;
    };
  };
}
