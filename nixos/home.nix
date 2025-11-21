{ config, pkgs, ... }:

{
  home.username = "wlum";
  home.homeDirectory = "/home/wlum";
  home.packages = with pkgs; [
    brave
    discord
    gh
    git
    neofetch
    neovim
    prismlauncher
    protonup
    python3
    spotify
    uv
    zoxide
  ];

  home.stateVersion = "25.05";
  home.sessionVariables = {
    STEAM_EXTRA_COMPAT_TOOL_PATHS = "\${HOME}/.steam/root/compatibilitytools.d";
  };
}
