{
    description = "Divon NixOS Flakes";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";

        hyprland.url = "github:hyprwm/Hyprland";

        home-manager = {
            url = "github:nix-community/home-manager/release-25.05";
            inputs.nixpkgs.follows = "nixpkgs";
        };

	    vscode-server.url = "github:nix-community/nixos-vscode-server";

        stylix.url = "github:nix-community/stylix/release-25.05";
    };

    outputs = inputs@{ self, ... }:
    let
    # ---- SYSTEM SETTINGS ---- #
    systemSettings = {
        architecture = "x86_64-linux"; #system architecture
        hostname = "igor-nixos";
        timezone = "Asia/Tokyo";
        locale = "en_US.UTF-8";
        bootMode = "uefi"; # bios or uefi
        bootMountPath = "/BOOT";
        grubDevice = "/dev/sda"; # device identifier for grub; only used for legacy (bios) boot mode
    };

    # ---- USER SETTINGS ---- #
    userSettings = {
        username = "igor";
        name = "Igor Novid";
        email = "igornovid@outlook.com";
        dotfilesDir = "~/.dotfiles";
    };

    lib = inputs.nixpkgs.lib;

    pkgs = import inputs.nixpkgs {
        system = systemSettings.architecture;
        config = {
            allowUnfree = true;
            allowUnfreePredicate = (_: true);
        };
    };

    in {
        nixosConfigurations = {
            nixhost = lib.nixosSystem {
                system = systemSettings.architecture;
                modules = [
                    ./confs/system_modules/configuration.nix
                    ];
                specialArgs = {
                    inherit systemSettings;
                    inherit userSettings;
                    inherit inputs;
                };
            };
        };

        homeConfigurations = {
            nixuser = inputs.home-manager.lib.homeManagerConfiguration {
                inherit pkgs;
                modules = [
                    ./confs/user_modules/home.nix
                ];
                extraSpecialArgs = {
                    inherit systemSettings;
                    inherit userSettings;
                    inherit inputs;
                };
            };
        };
    };
}
