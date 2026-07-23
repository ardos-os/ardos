use std::{env, fs, path::PathBuf};

fn main() {
    let manifest_dir = PathBuf::from(env::var_os("CARGO_MANIFEST_DIR").unwrap());
    let idl_path = manifest_dir.join("init.midl");
    println!("cargo:rerun-if-changed={}", idl_path.display());
    let source = fs::read_to_string(&idl_path).unwrap();
    let document = midl::parse_document(&source).unwrap();
    let server_bindings = midl::generate_rust_with_mode(&document, midl::RustMode::Server);
    let out_dir = PathBuf::from(env::var_os("OUT_DIR").unwrap());
    fs::write(out_dir.join("server_bindings.rs"), server_bindings).unwrap();
}