{
  mkArdosDerivation,
  ap2,
  self,
  fetchFromGitHub,
}:
with self;
  mkArdosDerivation {
    pname = "libbpf";
    version = "1.7.0";
    src = fetchFromGitHub {
      owner = "libbpf";
      repo = "libbpf";
      rev = "v1.7.0";
      hash = "sha256-F92msxkYp4yZA3qUoSwS5GKUhcEO6DrYNln7w6U+jt0=";
    };

    nativeBuildInputs = with ap2.crossPkgs.pkgsBuildTarget; [pkg-config];
    buildInputs = [libelf zlib];

    enableParallelBuilding = true;
    makeFlags = [
      "PREFIX=$(out)"
      "--directory=src"
    ];

    preBuild = ''
      export NIX_LDFLAGS+=" ${libelf}/lib/libelf.a ${zlib}/lib/libz.a"
    '';

    postInstall = ''
      install -Dm444 include/uapi/linux/*.h -t $out/include/linux
    '';

    runtimeLayout = [
      {
        source = "lib/";
        target = "/ardos/inputs/foreign/";
      }
      {
        source = "lib64/";
        target = "/ardos/inputs/foreign/";
      }
      {
        source = "lib/pkgconfig/";
        target = "/dev/null";
      }
    ];
  }
