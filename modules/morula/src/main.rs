use std::{fs::{File, FileType}, os::fd::AsRawFd, path::{Path, PathBuf}, rc::Rc, sync::Arc};

use syscalls::Sysno::finit_module;
fn load_module(path: &Path) {
    let file = File::open(path).expect("Failed to open module file");
    unsafe { syscalls::syscall!(finit_module, file.as_raw_fd(), 0, 0) }.expect("failed to load module");
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
    std::thread::park();
}
