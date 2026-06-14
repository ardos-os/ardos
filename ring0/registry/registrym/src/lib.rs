//! Ardos Registry out-of-tree Linux module.
#![cfg_attr(cargo_nok_ra, no_std)]
#[cfg(not(MODULE))]
compile_error!(
    "Must be compiled using cargo-nok, normal `cargo check` or `cargo build` will not work."
);
#[cfg(MODULE)]
include!("./module.rs");
#[cfg(MODULE)]
pub mod registry_device;
