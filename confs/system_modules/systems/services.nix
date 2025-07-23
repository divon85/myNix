{ pkgs, ... }:
{
    services = {
        # Enable CUPS to print documents
        printing.enable = true;

        # Enable the OpenSSH daemon
        openssh.enable = true;

        # Enable vscode-server
        vscode-server.enable = true;

        # keyring
        gnome.gnome-keyring.enable = true;

        # enable trash
        gvfs.enable = true;

        dbus = {
            enable = true;
            packages = [ pkgs.dconf ];
        };

        pipewire = {
            enable = true;
            alsa.enable = true;
            alsa.support32Bit = true;
            pulse.enable = true;
            jack.enable = true;
        };

        xserver.xkb = {
            layout = "jp";
            variant = "";
        };
    };

    # Enable bluetooth
    hardware.bluetooth.enable = true;
}