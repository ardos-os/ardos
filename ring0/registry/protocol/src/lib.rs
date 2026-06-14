#![cfg_attr(not(cargo_nok), no_std)]

#[cfg(test)]
extern crate std;

pub use postcard;
use serde::{Deserialize, Serialize};
pub const ABI_VERSION: u32 = 1;

const IOC_NRBITS: u32 = 8;
const IOC_TYPEBITS: u32 = 8;
const IOC_SIZEBITS: u32 = 14;
const IOC_TYPESHIFT: u32 = IOC_NRBITS;
const IOC_SIZESHIFT: u32 = IOC_TYPESHIFT + IOC_TYPEBITS;
const IOC_DIRSHIFT: u32 = IOC_SIZESHIFT + IOC_SIZEBITS;
const IOC_WRITE: u32 = 1;
const IOC_READ: u32 = 2;

const fn iowr<T>(kind: u8, number: u8) -> u32 {
    ((IOC_READ | IOC_WRITE) << IOC_DIRSHIFT)
        | ((kind as u32) << IOC_TYPESHIFT)
        | number as u32
        | ((core::mem::size_of::<T>() as u32) << IOC_SIZESHIFT)
}

#[repr(C)]
#[derive(Clone, Copy, Debug, Default, Eq, PartialEq)]
pub struct CommandEnvelope {
    pub version: u32,
    pub reserved: u32,
    pub data_ptr: usize,
    pub data_len: usize,
    pub result_ptr: usize,
    pub result_len: usize,
}

pub const REGISTRY_IOCTL_EXECUTE: u32 = iowr::<CommandEnvelope>(b'R', 0);

#[derive(Clone, Debug, Eq, PartialEq, Serialize, Deserialize)]
pub enum Command {
    Ping { value: u64 },
}

#[derive(Clone, Debug, Eq, PartialEq, Serialize, Deserialize)]
pub enum CommandResult {
    Ping { value: u64 },
    Success,
    Error(i32),
}

#[derive(Debug, Eq, PartialEq)]
pub enum ProtocolError {
    Version,
    PostcardError(postcard::Error),
    #[cfg(MODULE)]
    KernelAllocError(kernel::alloc::AllocError),
}

impl Command {
    pub fn serialize_to_extendable<'a, W: core::iter::Extend<u8>>(
        &self,
        buffer: W,
    ) -> Result<W, ProtocolError> {
        postcard::to_extend(self, buffer).map_err(ProtocolError::PostcardError)
    }

    pub fn deserialize_from_bytes(bytes: &[u8]) -> Result<Self, ProtocolError> {
        postcard::from_bytes(bytes).map_err(ProtocolError::PostcardError)
    }
}

impl CommandResult {
    pub fn serialize_to_extendable<'a, W: core::iter::Extend<u8>>(
        &self,
        buffer: W,
    ) -> Result<W, ProtocolError> {
        postcard::to_extend(self, buffer).map_err(ProtocolError::PostcardError)
    }
    #[cfg(MODULE)]
    pub fn serialize_to_kvec<'a>(&self) -> Result<kernel::alloc::KVec<u8>, ProtocolError> {
        use kernel::alloc::KVec;
        use kernel::alloc::flags;

        let serialized_size =
            postcard::experimental::serialized_size(self).map_err(ProtocolError::PostcardError)?;
        let mut buffer = KVec::with_capacity(serialized_size, flags::GFP_KERNEL)
            .map_err(ProtocolError::KernelAllocError)?;
        buffer
            .resize(serialized_size, 0, flags::GFP_KERNEL)
            .map_err(ProtocolError::KernelAllocError)?;

        let written = postcard::to_slice(self, buffer.as_mut_slice())
            .map_err(ProtocolError::PostcardError)?;
        debug_assert_eq!(written.len(), serialized_size);

        Ok(buffer)
    }

    pub fn deserialize_from_bytes(bytes: &[u8]) -> Result<Self, ProtocolError> {
        postcard::from_bytes(bytes).map_err(ProtocolError::PostcardError)
    }
}

#[cfg(MODULE)]
unsafe impl kernel::transmute::FromBytes for CommandEnvelope {}

#[cfg(MODULE)]
unsafe impl kernel::transmute::AsBytes for CommandEnvelope {}

const _: () = assert!(core::mem::size_of::<CommandEnvelope>() == 40);

#[cfg(all(test, not(MODULE)))]
mod tests {
    use super::*;

    #[test]
    fn abi_is_stable() {
        assert_eq!(core::mem::size_of::<CommandEnvelope>(), 40);
        assert_eq!(REGISTRY_IOCTL_EXECUTE, 0xc028_5200);
    }

    #[test]
    fn postcard_round_trip() {
        let command = Command::Ping { value: 1337 };
        let cmd_buffer = std::vec::Vec::new();

        let serialized_cmd = command.serialize_to_extendable(cmd_buffer).unwrap();

        let decoded_cmd = Command::deserialize_from_bytes(&serialized_cmd).unwrap();
        assert_eq!(command, decoded_cmd);

        let result = CommandResult::Ping { value: 1337 + 1 };
        let res_buffer = std::vec::Vec::new();
        let serialized_res = result.serialize_to_extendable(res_buffer).unwrap();

        let decoded_res = CommandResult::deserialize_from_bytes(&serialized_res).unwrap();
        assert_eq!(result, decoded_res);
    }
}
