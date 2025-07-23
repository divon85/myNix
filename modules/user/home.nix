{ config, pkgs, ... }:

{
  home.username = "igor";
  home.homeDirectory = "/home/igor";
  home.stateVersion = "24.05";

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    neofetch
    ripgrep
    fzf
    htop
  ];
}