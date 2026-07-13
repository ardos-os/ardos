{ap2, zstd, self}:

(ap2.wrapDerivation zstd.dev {
  runtimeLayout = [
    { source = "lib/"; target = "/ardos/core/"; }
    { source = "lib/pkgconfig"; target = "/dev/null"; }
  ];
})