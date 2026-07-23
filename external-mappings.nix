# Maps shared libraries from glibc, libgcc, and the cross-compiler runtime
# into the ROM at /ardos/lib.
#
# NSS modules are included but not configured — glibcPlugins handles
# nsswitch.conf separately.  GNU ld scripts are filtered by the sysroot.
crossPkgs: let
  inherit (crossPkgs) glibc;
  inherit (crossPkgs.stdenv.cc.cc) libgcc lib;
in [
  {
    drv = glibc;
    runtimeLayout = [
      {
        source = "lib/";
        target = "/ardos/lib/";
      }
    ];
  }
  {
    drv = libgcc;
    runtimeLayout = [
      {
        source = "lib/";
        target = "/ardos/lib/";
      }
    ];
  }
  {
    drv = lib;
    runtimeLayout = [
      {
        source = "${crossPkgs.stdenv.hostPlatform.config}/lib/";
        target = "/ardos/lib/";
      }
    ];
  }
]
