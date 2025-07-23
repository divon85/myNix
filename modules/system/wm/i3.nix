{ pkgs, ... }:
{
    imports = [
        ./dbus.nix
    ];

    services.xserver = {
        enable = true;
        layout = "jp";
        xkbVariant = "";
        excludePackages = [ pkgs.xterm ];
        displayManager = {
            lightdm.enable = true;
            sessionCommands = ''
                xset -dpms
                xset s blank
                xset r rate 350 50
                xset s 300
                ${pkgs.lightlocker}/bin/light-locker --idle-hint &
            '';
        };
        libinput = {
            touchpad.disableWhileTyping = true;
        };
        windowManager.i3.enable = true;
    };

    environment.systemPackages = with pkgs; [
        i3status
        dmenu
        i3lock
        lxappearance
    ];

    programs.dconf.enable = true;
}