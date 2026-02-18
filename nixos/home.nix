{ config, pkgs, ... }:

{
  home.username = "wlum";
  home.homeDirectory = "/home/wlum";
  home.packages = with pkgs; [
    azure-cli
    brave
    discord
    gcc
    gh
    git
    neofetch
    neovim
    prismlauncher
    protonup
    python3
    rustup
    spotify
    terraform
    uv
    wl-clipboard
    zoxide
  ];

  home.file.".bashrc" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/config/bash/bashrc";
  };

  home.file.".config/git/config" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/config/git/config";
  };

  home.file.".config/nvim" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/config/nvim";
  };

  home.stateVersion = "25.05";
  home.sessionVariables = {
    STEAM_EXTRA_COMPAT_TOOL_PATHS = "\${HOME}/.steam/root/compatibilitytools.d";
  };

  services.udiskie = {
    enable = true;
  };
}
