{ inputs, pkgs, ... }:
{
    imports = [
        ./extraConfigs/animation.nix
        ./extraConfigs/autostart.nix
        ./extraConfigs/binds.nix
        ./extraConfigs/decoration.nix
        ./extraConfigs/environment.nix
        ./extraConfigs/general.nix
        ./extraConfigs/gestures.nix
        ./extraConfigs/input.nix
        ./extraConfigs/layout.nix
        ./extraConfigs/misc.nix
        ./extraConfigs/monitor.nix
        ./extraConfigs/windowrules.nix
        ];
    wayland.windowManager.hyprland = {
        enable = true;
        package = inputs.hyprland.packages.${pkgs.system}.hyprland;
    };
}
