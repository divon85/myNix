{ config, pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    theme = "gruvbox-dark";
    font = "FiraCode 12";
    extraConfig = {
      modi = "drun,window";
      show-icons = true;
      matching = "fuzzy";
    };
  };

  home.packages = with pkgs; [ fira-code ];

  xsession.windowManager.i3.config.keybindings = {
    "Mod4+d" = "exec --no-startup-id rofi -show drun";
    "Mod4+w" = "exec --no-startup-id rofi -show window";
  };
}