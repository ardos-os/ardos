{
  buildPkgs,
  kernel,
  cargo-nok,
  craneLib,
}: let
  inherit (buildPkgs) lib;
in {
  # Build a Rust Linux kernel module using cargo-nok, backed by crane for
  # dependency vendoring, caching, and offline builds.
  #
  # Required inputs:
  #   kernel     - The kernel build tree derivation (self.kernel.headers).
  #   cargo-nok  - The cargo-nok binary package.
  #   craneLib   - A crane lib instance (crane.mkLib buildPkgs).
  #
  # mkKernelModule arguments:
  #   name             - Derivation name (e.g. "motherboardm").
  #   src              - Module source tree (must contain the crate's Cargo.lock).
  #   sourceRoot       - Subdirectory within src to unpack to (default: "source").
  #   cargoLock        - Path to the Cargo.lock to vendor from. Defaults to
  #                      <src>/<sourceRoot>/Cargo.lock.
  #   cargoExtraArgs   - Extra arguments passed to `cargo nok build`.
  #   rustc            - Rust compiler (must match the kernel's CONFIG_RUSTC_VERSION_TEXT).
  #   preBuild         - Extra shell commands before the cargo-nok build.
  #   installPhase     - Override the default install phase.
  #   passthru         - Extra attributes to attach to the derivation.
  #   meta             - Meta information.
  #   outputHashes     - Attrset mapping git source URLs to sha256 hashes,
  #                      for fully offline evaluation of git deps.
  mkKernelModule = {
    name,
    src,
    sourceRoot ? "source",
    cargoLock ? null,
    cargoExtraArgs ? "",
    rustc ? buildPkgs.rustc,
    preBuild ? "",
    installPhase ? null,
    passthru ? {},
    meta ? {},
    outputHashes ? {},
  }: let
    cc = "${buildPkgs.gcc}/bin/cc";
    ld = "${buildPkgs.binutils}/bin/ld";
    objcopy = "${buildPkgs.binutils}/bin/objcopy";

    cargoVendorDir = craneLib.vendorCargoDeps (
      {inherit outputHashes;}
      // (
        if cargoLock != null
        then {inherit cargoLock;}
        else {inherit src;}
      )
    );
  in
    craneLib.mkCargoDerivation {
      inherit
        name
        src
        sourceRoot
        cargoVendorDir
        passthru
        meta
        ;

      cargoArtifacts = null;
      doInstallCargoArtifacts = false;
      doCheck = false;

      buildPhaseCargoCommand = "cargo nok build ${cargoExtraArgs}";

      installPhaseCommand =
        if installPhase != null
        then installPhase
        else ''
          mkdir -p $out
          find . -name "*.ko" -exec cp {} $out/ \;
        '';

      nativeBuildInputs = [
        cargo-nok
        rustc
        buildPkgs.gcc
        buildPkgs.binutils
      ];

      preBuild = preBuild;

      # cargo-nok discovers the kernel build tree via NOK_KERNEL_DIR.
      NOK_KERNEL_DIR = "${kernel}";

      # cargo-nok needs the Rust source library to build kernel modules.
      RUST_SRC_PATH = "${buildPkgs.rustPlatform.rustLibSrc}";
      RUST_LIB_SRC = "${buildPkgs.rustPlatform.rustLibSrc}";

      # Tools used by cargo-nok for module linking and metadata compilation.
      CC = cc;
      LD = ld;
      OBJCOPY = objcopy;

      # Disable crane's profile injection — cargo-nok manages its own flags.
      CARGO_PROFILE = "";
    };
}
