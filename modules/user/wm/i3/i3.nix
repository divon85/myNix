{ pkgs, ... }:
{
    imports = [
        ./picom.nix
        ./rofi.nix
    ];

    xsession.windowManager.i3 = {
        enable = true;
        package = pkgs.i3-gaps
    };

    home.packages = with pkgs; [
        i3status
        i3lock
        alacritty
    ];
}