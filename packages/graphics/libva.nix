{
  self,
  ap2,
}:
ap2.wrapDerivation (ap2.crossPkgs.libva-minimal.override {
  libdrm = self.libdrm;
}) {
  runtimeLayout = [
    {
      source = "lib/";
      target = "/ardos/graphics/";
    }
    {
      source = "lib/pkgconfig/";
      target = "/dev/null";
    }
  ];
}
