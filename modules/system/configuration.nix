{ config, pkgs, ... }:

{
  services.xserver.enable = true;
  services.xserver.displayManager.defaultSession = "none+i3";
  services.xserver.windowManager.i3.enable = true;

  environment.systemPackages = with pkgs; [
    i3status
    dmenu
    i3lock
    lxappearance
  ];

  fonts.packages = with pkgs; [
    fira-code
    noto-fonts
    noto-fonts-cjk
    dejavu_fonts
  ];

  stylix = {
    enable = true;
    image = ./style/tiger.png;
    polarity = "dark";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/tokyo-night-dark.yaml";

    fonts = {
      monospace = {
        package = pkgs.fira-code;
        name = "Fira Code";
      };
      sansSerif = {
        package = pkgs.noto-fonts;
        name = "Noto Sans";
      };
      serif = {
        package = pkgs.noto-fonts;
        name = "Noto Serif";
      };
      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };
    };

    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };

    targets.gtk = {
      enable = true;
      flatpakSupport.enable = true;
    };
  };

  programs.dconf.enable = true;
  system.stateVersion = "24.05";
}