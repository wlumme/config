{ config, pkgs, ... }:

{
  home.username = "wlum";
  home.homeDirectory = "/home/wlum";
  home.packages = with pkgs; [
    gh
    git
    neofetch
    neovim
  ];

  home.stateVersion = "25.05";
}
