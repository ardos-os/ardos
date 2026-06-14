use kernel::{
    alloc::flags,
    fs::File,
    macros::vtable,
    miscdevice::{MiscDevice, MiscDeviceRegistration},
    prelude::*,
    uaccess::UserSlice,
};
use registrym_protocol::{
    ABI_VERSION, Command, CommandEnvelope, CommandResult, REGISTRY_IOCTL_EXECUTE,
};

fn execute(command: Command) -> CommandResult {
    match command {
        Command::Ping { value } => CommandResult::Ping { value: value + 1 },
    }
}

pub struct RegistryDevice;

#[vtable]
impl MiscDevice for RegistryDevice {
    type Ptr = KBox<Self>;

    fn open(_file: &File, _misc: &MiscDeviceRegistration<Self>) -> Result<Self::Ptr> {
        Ok(KBox::new(Self, GFP_KERNEL)?)
    }

    fn ioctl(_device: &Self, _file: &File, cmd: u32, arg: usize) -> Result<isize> {
        if cmd != REGISTRY_IOCTL_EXECUTE {
            pr_err!(
                "registrym: ioctl: unknown command 0x{:08x}, expected 0x{:08x}\n",
                cmd,
                REGISTRY_IOCTL_EXECUTE
            );
            return Err(ENOTTY);
        }

        let envelope_slice = UserSlice::new(
            UserPtr::from_addr(arg),
            core::mem::size_of::<CommandEnvelope>(),
        );
        let mut envelope_slice_reader = envelope_slice.reader();
        let envelope = envelope_slice_reader
            .read::<CommandEnvelope>()
            .map_err(|error| {
                pr_err!(
                    "registrym: ioctl: failed to read command envelope: errno={}\n",
                    error.to_errno()
                );
                error
            })?;

        if envelope.version != ABI_VERSION {
            pr_err!(
                "registrym: ioctl: unsupported ABI version {}, expected {}\n",
                envelope.version,
                ABI_VERSION
            );
            return Err(EINVAL);
        }

        pr_debug!(
            "registrym: ioctl: command_size={} result_capacity={}\n",
            envelope.data_len,
            envelope.result_len
        );

        let mut encoded_slice = KVec::new();
        UserSlice::new(UserPtr::from_addr(envelope.data_ptr), envelope.data_len)
            .read_all(&mut encoded_slice, flags::GFP_KERNEL)
            .map_err(|error| {
                pr_err!(
                    "registrym: ioctl: failed to copy {} command bytes from userspace: errno={}\n",
                    envelope.data_len,
                    error.to_errno()
                );
                error
            })?;

        let command = Command::deserialize_from_bytes(&encoded_slice).map_err(|error| {
            pr_err!(
                "registrym: ioctl: failed to deserialize {} command bytes: {:?}\n",
                encoded_slice.len(),
                error
            );
            EINVAL
        })?;

        let result = execute(command);
        let result_bytes: KVec<u8> = result.serialize_to_kvec().map_err(|error| {
            pr_err!(
                "registrym: ioctl: failed to serialize result: {:?}\n",
                error
            );
            EINVAL
        })?;

        if result_bytes.len() > envelope.result_len {
            pr_err!(
                "registrym: ioctl: result buffer too small: required={}, available={}\n",
                result_bytes.len(),
                envelope.result_len
            );
            return Err(ENOSPC);
        }

        let command_result_slice =
            UserSlice::new(UserPtr::from_addr(envelope.result_ptr), envelope.result_len);
        let mut command_result_writer = command_result_slice.writer();
        command_result_writer
            .write_slice(&result_bytes)
            .map_err(|error| {
                pr_err!(
                    "registrym: ioctl: failed to copy {} result bytes to userspace: errno={}\n",
                    result_bytes.len(),
                    error.to_errno()
                );
                error
            })?;

        pr_debug!(
            "registrym: ioctl: command completed, result_size={}\n",
            result_bytes.len()
        );
        Ok(result_bytes.len().clamp(0, isize::MAX as usize) as isize)
    }
}
