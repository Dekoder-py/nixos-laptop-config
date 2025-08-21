# nixos-laptop-config

This is my config for NixOS (btw) on my spare laptop.

To use it you should place all files (excluding `hardware-configuration.nix`) in `/etc/nixos` and run:

```bash
sudo nixos-rebuild switch --extra-experimental-features "nix-command flakes"
```
