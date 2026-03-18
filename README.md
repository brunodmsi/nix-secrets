# nix-secrets

Private secrets repository for nix-config. Contains agenix-encrypted secrets and network configuration.

## Setup

1. Add your SSH public keys to `secrets.nix`
2. Use `agenix` to encrypt each `.age` file with your actual secrets
3. Update `networks.nix` with your actual network configuration
