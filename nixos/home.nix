{ config, pkgs, ... }:

{
  home.username = "wlum";
  home.homeDirectory = "/home/wlum";
  home.packages = with pkgs; [
    gh
    neofetch
  ];

  programs.git = {
    enable = true;
    userName = "William Lumme";
    userEmail = "80401792+wlumme@users.noreply.github.com";
  };

  home.stateVersion = "25.05";
}
