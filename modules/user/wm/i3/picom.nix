{ config, pkgs, ... }:

{
  home.packages = with pkgs; [ picom ];

  xsession.windowManager.i3.config.startup = [
    {
      command = "picom --config ~/.config/picom/picom.conf";
      always = true;
    }
  ];

  home.file.".config/picom/picom.conf".text = ''
    backend = "glx";
    vsync = true;
    shadow = true;
    shadow-radius = 12;
    shadow-offset-x = -15;
    shadow-offset-y = -15;
    fade-in-step = 0.03;
    fade-out-step = 0.03;
    inactive-opacity = 0.9;
    active-opacity = 1.0;
    corner-radius = 10;
  '';
}