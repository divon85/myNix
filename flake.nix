{
    description = "Divon Nixos Flakes";

    inputs = {

        # Base
        nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
        nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
        # home-manager = {
        #     url = "github:nix-community/home-manager/release-25.05";
        #     inputs.nixpkgs.follows = "nixpkgs";
        # };
        nixos-hardware.url = "github:NixOS/nixos-hardware";
        hyprland.url = "github:hyprwm/Hyprland";
        agenix.url = "github:ryantm/agenix";
        stylix = {
            url = "github:nix-community/stylix";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        # Software
        nixos-vscode-server.flake = false;
        nixos-vscode-server.url = "github:nix-community/nixos-vscode-server";
        nix-index-database.url = "github:nix-community/nix-index-database";
        nix-index-database.inputs.nixpkgs.follows = "nixpkgs";
        hyprland.url = "github:hyprwm/Hyprland";

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

        # homeConfigurations = {
        #     nixuser = inputs.home-manager.lib.homeManagerConfiguration {
        #         inherit pkgs;
        #         modules = [
        #             ./modules/user/home.nix
        #         ];
        #         extraSpecialArgs = {
        #             inherit systemSettings;
        #             inherit userSettings;
        #             inherit inputs;
        #         };
        #     };
        # };
    };
}
