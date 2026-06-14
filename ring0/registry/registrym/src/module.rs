use kernel::{
    miscdevice::{MiscDeviceOptions, MiscDeviceRegistration},
    prelude::*,
};

module! {
    type: RegistryModule,
    name: "registrym",
    authors: ["Ardos OS contributors"],
    description: "Ardos Registry kernel module",
    license: "GPL",
}

#[pin_data]
struct RegistryModule {
    #[pin]
    _device: MiscDeviceRegistration<crate::registry_device::RegistryDevice>,
}

impl kernel::InPlaceModule for RegistryModule {
    fn init(_module: &'static ThisModule) -> impl PinInit<Self, Error> {
        pr_info!("registrym: loaded\n");

        try_pin_init!(Self {
            _device <- MiscDeviceRegistration::register(MiscDeviceOptions {
                name: c"registry",
            }),
        })
    }
}
