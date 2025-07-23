{ inputs, pkgs, lib, options, systemSettings, userSettings, ... }: {
    imports = [
        ./hardware-configuration.nix
        ./apps/programs.nix
        ./apps/software.nix
        ./apps/thunar.nix
        ./configs/bootloader.nix
        ./configs/networking.nix
        ./configs/services.nix
        ./configs/timezone.nix
        ./configs/user.nix
        ./style/stylix.nix
        (./. + "/wm"+("/"+userSettings.wm)+".nix")
        inputs.home-manager.nixosModules.default
        inputs.vscode-server.nixosModules.default
        inputs.stylix.nixosModules.stylix
    ];

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
