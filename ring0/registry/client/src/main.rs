use registry_client::RegistryClient;

fn main() -> std::io::Result<()> {
    let registry = RegistryClient::open()?;
    let result = registry.ping(42)?;
    println!("result={result}");
    Ok(())
}
