use std::{fs::{File, FileType}, os::fd::AsRawFd, path::{Path, PathBuf}, process::Command, rc::Rc, sync::Arc};

use syscalls::Sysno::finit_module;
fn load_module(path: &Path) {
    let file = File::open(path).expect("Failed to open module file");
    let params = b"\0";
    let err: syscalls::Errno = match unsafe { syscalls::syscall!(finit_module, file.as_raw_fd(), params.as_ptr() as usize, 0) } {
        Ok(_) => return,
        Err(e) => e,
    };
    panic!("failed to load module {}: errno {:?}", path.display(), err);
}
pub fn ls(path: impl AsRef<Path>) {
    for entry in std::fs::read_dir(path).expect("failed to read directory") {
        println!(
            "{}",
            entry
                .expect("failed to read directory entry")
                .file_name()
                .to_string_lossy()
        );
    }
}
fn main() {

    let modules = std::fs::read_dir("/kernel/modules").expect("modules folder to exist")
        .map(|m| m.expect("failed to read module directory entry"))
        .filter(|m| m.file_type().is_ok_and(|f| f.is_file()))
        .map(|m| m.path())
        .filter(|module_path| module_path.extension().is_some_and(|e| e == "ko"))
        .collect::<Arc<[_]>>();
    for module in modules.iter().as_slice() {
        println!("Loading module {}", module.display());
        load_module(module);
    }
    println!("Loaded modules");
    unsafe {std::env::set_var("PATH", "/ardos/bin")};
    ls("/ardos/graphics/");
    let _ = dbg!(Command::new("/ardos/graphics/shift").spawn());
    std::thread::park();
}
