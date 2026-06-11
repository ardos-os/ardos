mod kernel_args;
mod loopdev;
mod mount;
mod proc;

use std::{
	env, ffi::CString, fs, io, os::unix::process::CommandExt, path::PathBuf, process::Command,
};

use crate::{
	kernel_args::Args,
	loopdev::LoopDevice,
	mount::{MountFlags, mount, resolve_uuid, umount},
	proc::Proc,
};

fn main() -> io::Result<()> {
	println!("init-stage-1: starting");
	let proc = Proc::new()?;
	let args = Args::parse(&proc)?;

	mount_dev()?;
	mount_sys()?;
	prepare_initramfs_mountpoints()?;

	let system_partition_path = mount_system_partition(&args)?;

	let squashfs_path = system_partition_path.join("system.squashfs");

	let loop_device = Box::leak(Box::new(LoopDevice::new(&squashfs_path)?));

	let system_root_path = mount_system_image(loop_device.path())?;

	switch_root(system_root_path)?;
	prepare_runtime_filesystems()?;
	launch_morula(&args)
}

fn mount_dev() -> io::Result<()> {
	fs::create_dir_all("/dev")?;
	mount("devtmpfs", "/dev", "devtmpfs", MountFlags::empty())
}

fn mount_sys() -> io::Result<()> {
	fs::create_dir_all("/sys")?;
	mount("sysfs", "/sys", "sysfs", MountFlags::empty())
}

fn prepare_initramfs_mountpoints() -> io::Result<()> {
	fs::create_dir_all("/run")
}

fn mount_system_partition(args: &Args) -> io::Result<PathBuf> {
	const SYSTEMP_PATH: &str = "/systemp";
	fs::create_dir_all(SYSTEMP_PATH)?;
	let dev = resolve_uuid(args.system_data_partition.trim_start_matches("UUID="))?;
	mount(&dev, SYSTEMP_PATH, "btrfs", MountFlags::empty())?;
	Ok(PathBuf::from(SYSTEMP_PATH))
}

fn mount_system_image(device: impl Into<PathBuf>) -> io::Result<PathBuf> {
	let device = device.into();
	const SYSTEM_PATH: &str = "/system";
	fs::create_dir_all(SYSTEM_PATH)?;
	mount(
		device.as_os_str().to_str().unwrap(),
		SYSTEM_PATH,
		"squashfs",
		MountFlags::RDONLY | MountFlags::NODEV,
	)?;
	Ok(PathBuf::from(SYSTEM_PATH))
}

fn prepare_runtime_filesystems() -> io::Result<()> {
	ensure_mountpoint("/run")?;
	mount(
		"tmpfs",
		"/run",
		"tmpfs",
		MountFlags::NOSUID | MountFlags::NODEV,
	)?;
	fs::create_dir_all("/run/udev")?;

	ensure_mountpoint("/tmp")?;
	mount(
		"tmpfs",
		"/tmp",
		"tmpfs",
		MountFlags::NOSUID | MountFlags::NODEV,
	)?;
	let mut permissions = fs::metadata("/tmp")?.permissions();
	use std::os::unix::fs::PermissionsExt;
	permissions.set_mode(0o1777);
	fs::set_permissions("/tmp", permissions)?;
	Ok(())
}

fn ensure_mountpoint(path: &str) -> io::Result<()> {
	if std::path::Path::new(path).is_dir() {
		return Ok(());
	}

	Err(io::Error::new(
		io::ErrorKind::NotFound,
		format!("missing runtime mountpoint {path} in the system image"),
	))
}

fn launch_morula(args: &Args) -> io::Result<()> {
	const MORULA_PATH: &str = "/ardos/services/morula/morula";
	if !std::path::Path::new(MORULA_PATH).is_file() {
		return Err(io::Error::new(
			io::ErrorKind::NotFound,
			format!("{MORULA_PATH} is missing from the system image"),
		));
	}

	println!("init-stage-1: handing PID 1 to Morula");
	Err(
		Command::new(MORULA_PATH)
			.env("MORULA_USER_PARTITION", &args.user_data_partition)
			.exec(),
	)
}
pub fn switch_root(new_root: impl Into<PathBuf>) -> io::Result<()> {
	let new_root = new_root.into();
	println!("switch_root: switching root to {}", new_root.display());

	if !new_root.exists() {
		return Err(io::Error::new(
			io::ErrorKind::NotFound,
			format!("new root {} does not exist", new_root.display()),
		));
	}

	let mounts = ["/dev", "/proc", "/sys", "/run"];
	for &mnt in mounts.iter() {
		let new_target = new_root.join(mnt.strip_prefix('/').unwrap_or(mnt));

		println!("switch_root: moving {} -> {}", mnt, new_target.display());
		match mount(
			mnt,
			&new_target.display().to_string(),
			None,
			MountFlags::MOVE,
		) {
			Ok(_) => {}
			Err(e) => {
				eprintln!(
					"switch_root: failed to move {}, detaching instead: {}",
					mnt, e
				);
				let _ = umount(mnt);
			}
		}
	}

	env::set_current_dir(&new_root)?;
	println!("switch_root: changed directory to {}", new_root.display());

	mount(&new_root.display().to_string(), "/", None, MountFlags::MOVE)?;
	println!("switch_root: new root mounted over /");

	let dot = CString::new(".").unwrap();
	let res = unsafe { libc::chroot(dot.as_ptr()) };
	if res != 0 {
		return Err(io::Error::last_os_error());
	}

	env::set_current_dir("/")?;
	println!("switch_root: successfully chrooted into new root");

	Ok(())
}
