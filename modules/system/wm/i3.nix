{ pkgs, ... }:

{
    imports = [
        ./dbus.nix
    ];

    services.xserver = {
        enable = true;
        displayManager.defaultSession = "none+i3";
        windowManager.i3 = {
            enable = true;
            extraPackages = with pkgs; [
                dmenu
                i3block
                i3status
                lxappearance
            ];
        };
        layout = "jp";
        desktopManager.xterm.enabe = false;
    };
}