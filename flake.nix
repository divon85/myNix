{
    description = "Divon Nixos Flakes";

    inputs = {

        # Base
        nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
        nixos-hardware.url = "github:NixOS/nixos-hardware";

        #Editor
        nixvim.url = "github:nix-community/nixvim";
        nixvim.inputs.nixpkgs.follows = "nixpkgs";
        nix-doom-emacs-unstraightened.url = "github:marienz/nix-doom-emacs-unstraightened";
        nix-doom-emacs-unstraightened.inputs.nixpkgs.follows = "nixpkgs";
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
        wm = "i3"; # Choose between i3 and hyprland
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
                    ./modules/system/configuration.nix
                    ];
                specialArgs = {
                    inherit systemSettings;
                    inherit userSettings;
                    inherit inputs;
                };
            };
        };
    };
}
