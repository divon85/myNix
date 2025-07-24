{ config, lib, pkgs, ... }:

let
    mod = "Mod4";
in
{
    xsession.windowManager.i3 = {
        config = {
            modifier = mod;

            keybindings = lib.mkOptionDefault {
                "${mod}+Space" = "exec ${pkgs.dmenu}/bin/dmenu_run";
                "${mod}+Return" = "exec alacritty";
            }
        }
    };
}