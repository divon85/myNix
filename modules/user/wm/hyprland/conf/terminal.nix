{ pkgs, lib, ... }:
{
    programs.alacritty.enable = true;
    programs.alacritty.settings = {
        window.opacity = lib.mkForce 0.85;
    };
}