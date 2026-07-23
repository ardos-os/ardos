{ap2, self}: ap2.buildArdosRustPackage {
  src = ../../modules/morula;
  cargoLock = ../../modules/morula/Cargo.lock;
  strictDeps = true;
  runtimeLayout = [
    { source = "bin/morula"; target = "/ardos/init/morula"; }
  ];

}