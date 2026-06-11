use std::process::Command;

fn main() {
    env_logger::init();

    if std::process::id() != 1 {
        log::error!(target: "morula", "Morula must run as PID 1");
        std::process::exit(1);
    }
    Command::new("/ardos/services/shift/shift")
        .spawn()
        .expect("failed to start Shift");

    loop {
        std::thread::park();
    }
}
