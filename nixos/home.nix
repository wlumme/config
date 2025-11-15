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
    spotify
    zoxide
  ];

  home.stateVersion = "25.05";
}
