{inputs, pkgs, ... }:
{
    imports = [
        ./dbus.nix
    ];

    # Security
    security = {
        pam.services.login.enableGnomeKeyring = true;
        pam.services.gdm-password.enableGnomeKeyring = true;
        rtkit.enable = true;
    };

    programs.hyprland = {
        enable = true;
        # set the flake package
        package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
        # make sure to also set the portal package, so that they are in sync
        portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
    };
    programs.dconf.profiles.user.databases = [
        {
            settings."org/gnome/desktop/interface" = {
                gtk-theme = "Adwaita";
                icon-theme = "Flat-Remix-Red-Dark";
                font-name = "Noto Sans Medium 11";
                document-font-name = "Noto Sans Medium 11";
                monospace-font-name = "Noto Sans Mono Medium 11";
            };
        }
    ];environment.systemPackages = with pkgs; [
        # Hyprland utils
        waybar                                          # Status bar
        rofi-wayland                                    # Application launcher
        wl-clipboard                                    # Clipboard functionality
        wlogout                                         # logout function
        hyprlock                                        # lockscreen in hyprland
        hypridle                                        # enable sleep when idling in hyprland
        hyprpaper                                       # wallpaper
    ];
}