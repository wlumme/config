# Config

## Install

```bash
nix-shell -p git
git clone https://github.com/wlumme/config.git

cd config

cp --force /etc/nixos/hardware-configuration.nix ./nixos/
sudo rm --force --recursive /etc/nixos/
sudo ln --symbolic ~/config/nixos /etc/nixos

sudo nixos-rebuild switch

gh auth login
```
