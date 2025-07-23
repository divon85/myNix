{ inputs, pkgs, lib, options, systemSettings, userSettings, ... }: {
    imports = [
        ./hardware-configuration.nix
        ./apps/programs.nix
        ./apps/software.nix
        ./apps/thunar.nix
        ./style/stylix.nix
        ./systems/bootloader.nix
        ./systems/networking.nix
        ./systems/services.nix
        ./systems/timezone.nix
        ./wm/hyprland.nix
        inputs.home-manager.nixosModules.default
        inputs.vscode-server.nixosModules.default
        inputs.stylix.nixosModules.stylix
    ];

    # User account
    users.users.${userSettings.username} = {
        isNormalUser = true;
        description = userSettings.name;
        extraGroups = [ "networkmanager" "wheel" "video" "audio" ];
        shell = pkgs.zsh;
        packages = [];
    };

    # This value determines the NixOS release from which the default
    # settings for stateful data, like file locations and database versions
    # on your system were taken. It‘s perfectly fine and recommended to leave
    # this value at the release version of the first install of this system.
    # Before changing this value read the documentation for this option
    # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
    system.stateVersion = "25.05"; # Did you read the comment?

    # Enable Flakes
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;
}
