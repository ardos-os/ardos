{
  mkArdosDerivation,
  ap2,
  self,
}:
mkArdosDerivation {
  pname = "vulkan-loader";
  version = "1.4.304";
  src = builtins.fetchurl {
    url = "https://github.com/KhronosGroup/Vulkan-Loader/archive/refs/tags/v1.4.304.tar.gz";
    sha256 = "1ycrdic87syda3fkyvkzqqg061g38ifcbz4b0gp4sgsac20q539n";
  };
  nativeBuildInputs = with ap2.crossPkgs.pkgsBuildTarget; [cmake pkg-config python3];
  buildInputs = [ap2.crossPkgs.vulkan-headers];
  cmakeFlags = [
    "-DBUILD_WSI_XCB_SUPPORT=OFF"
    "-DBUILD_WSI_XLIB_SUPPORT=OFF"

    "-DCMAKE_INSTALL_INCLUDEDIR=${ap2.crossPkgs.vulkan-headers}/include"
  ];

  postInstall = ''
    rm -rf $out/share  $out/lib/*.a
  '';

  runtimeLayout = [
    {
      source = "lib/";
      target = "/ardos/core/";
    }
    {
      source = "lib64/";
      target = "/ardos/core/";
    }
    {
      source = "lib/pkgconfig/";
      target = "/dev/null";
    }
  ];
}
