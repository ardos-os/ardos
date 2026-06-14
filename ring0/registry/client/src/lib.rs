//! Userspace client for the Ardos registry kernel module.

use std::{
    fs::{File, OpenOptions},
    io,
    os::fd::AsRawFd,
    path::Path,
};

// Importa o envelope que criámos para a interface estável do ioctl
use registrym_protocol::{CommandEnvelope, REGISTRY_IOCTL_EXECUTE};
pub use registrym_protocol::{Command, CommandResult};

const DEVICE_PATH: &str = "/dev/registry";

pub struct RegistryClient {
    device: File,
}

impl RegistryClient {
    /// Opens `/dev/registry`.
    pub fn open() -> io::Result<Self> {
        Self::open_path(DEVICE_PATH)
    }

    /// Opens a registry device at a custom path.
    pub fn open_path(path: impl AsRef<Path>) -> io::Result<Self> {
        let device = OpenOptions::new().read(true).write(true).open(path)?;
        Ok(Self { device })
    }

    /// Executes one command through `REGISTRY_IOCTL_EXECUTE`.
    pub fn execute(&self, command: Command) -> io::Result<CommandResult> {
        let mut cmd_buf = vec![];
        cmd_buf = command.serialize_to_extendable(cmd_buf)
            .map_err(|e| io::Error::new(io::ErrorKind::InvalidData, format!("{:?}", e)))?;

        const RESULT_LENGTH: usize = size_of::<CommandResult>()*10;
        let mut res_buf = vec![0u8; RESULT_LENGTH];

        let mut envelope = CommandEnvelope {
            version: registrym_protocol::ABI_VERSION,
            reserved: 0,
            data_ptr: cmd_buf.as_ptr().addr(),
            data_len: cmd_buf.len(),
            result_ptr: res_buf.as_mut_ptr().addr(),
            result_len: RESULT_LENGTH,
        };

        let result = unsafe {
            libc::ioctl(
                self.device.as_raw_fd(),
                REGISTRY_IOCTL_EXECUTE as libc::c_ulong,
                &mut envelope,
            )
        };

        if result < 0 {
            return Err(io::Error::last_os_error());
        }

        let bytes_written = envelope.result_len as usize;
        let command_result = CommandResult::deserialize_from_bytes(&res_buf[..bytes_written])
            .map_err(|e| io::Error::new(io::ErrorKind::InvalidData, format!("{:?}", e)))?;

        Ok(command_result)
    }

    pub fn ping(&self, value: u64) -> io::Result<u64> {
        match self.execute(Command::Ping { value })? {
            CommandResult::Ping { value } => Ok(value),
            CommandResult::Error(code) => Err(io::Error::from_raw_os_error(code)),
            _ => Err(io::Error::new(io::ErrorKind::Other, "Resposta inesperada do Registro")),
        }
    }
}