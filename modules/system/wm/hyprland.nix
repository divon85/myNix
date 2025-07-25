{inputs, pkgs, userSettings, ... }:

let
    tuigreet = "${pkgs.greetd.tuigreet}/bin/tuigreet";
    session = "${pkgs.hyprland}/bin/Hyprland";
    username = userSettings.username; # replace with your actual username
in
{
    services.greetd = {
        enable = true;
        settings = {
            initial_session = {
                command = session;
                user = username;
            };
            default_session = {
            command = ''
                ${tuigreet}
                --greeting 'Welcome to NixOS!'
                --asterisks
                --asterisks-char "•"
                --remember
                --remember-user-session
                --time
                --time-format "%A %H:%M"
                --cmd ${session}";
            '';
            user = "greeter";
            };
        };
    };

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
        xwayland.enable = true;
        withUWSM = true;
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
    ];
    
    environment = {
        sessionVariables = {
            NIXOS_OZONE_WL = "1"; #Wayland hint for Electron apps
        };
        systemPackages = with pkgs; [
            # Hyprland utils
            waybar                                          # Status bar
            rofi-wayland                                    # Application launcher
            wl-clipboard                                    # Clipboard functionality
            wlogout                                         # logout function
            hyprlock                                        # lockscreen in hyprland
            hypridle                                        # enable sleep when idling in hyprland
            hyprpaper                                       # wallpaper
        ];
    };
}
