{ mkArdosDerivation, ap2, self }:

ap2.buildPkgs.rustPlatform.buildRustPackage {
  pname = "cargo-nok";
  version = "0.1.1";
  src = ../../modules/cargo-nok;
  cargoLock = {
    lockFile = ../../modules/cargo-nok/Cargo.lock;
  };

  meta = with ap2.buildPkgs.lib; {
    description = "Build Rust Linux kernel modules without Kbuild";
    license = licenses.gpl2Only;
  };
}
