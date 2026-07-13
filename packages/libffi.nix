{ ap2, self, libffi}:

(ap2.wrapDerivation libffi {
    runtimeLayout = [
      { source = "lib/"; target = "/ardos/core/"; }
      { source = "lib64/"; target = "/ardos/core/"; }
      { source = "lib/pkgconfig/"; target = "/dev/null"; }
    ];
  }).override {
    doCheck = false;
  }