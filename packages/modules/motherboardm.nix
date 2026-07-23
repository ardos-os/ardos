{ mkArdosDerivation, ap2, self, craneLib, wrapDerivation }:

let
  kernelModules = import ../../kernel/modules.nix {
    inherit (ap2) buildPkgs;
    kernel = self.kernel.headers;
    cargo-nok = self.cargo-nok;
    inherit craneLib;
  };

  drv = kernelModules.mkKernelModule {
    name = "motherboardm";

    src = ../../modules/motherboard;
    sourceRoot = "motherboard";

    # Vendor deps from motherboardm's own Cargo.lock (includes the git-patched
    # serde_core source).  crane reads the lock file, fetches all crates.io and
    # git dependencies, and produces a vendored directory with absolute store
    # paths — no manual vendoring or [patch.crates-io] stripping required.
    cargoLock = ../../modules/motherboard/motherboardm/Cargo.lock;

    preBuild = ''
      cd motherboardm
    '';

    passthru = {
      meta = {
        description = "motherboardm kernel-backed service bus for Linux IPC";
        license = ap2.buildPkgs.lib.licenses.gpl2Only;
      };
    };
  };
in
wrapDerivation drv {
  runtimeLayout = [
    { source = "./"; target = "/kernel/modules/"; }
  ];
}