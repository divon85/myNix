{ inputs, pkgs, lib, options, settingsettings, userSettings, ... }: {
    imports = [
        ./hardware-configuration.nix
        ./apps/software.nix
        ./settings/bootloader.nix
        ./settings/networking.nix
        ./settings/services.nix
        ./settings/timezone.nix
        ./settings/user.nix
        ./style/stylix.nix
        (./. + "/wm"+("/"+userSettings.wm)+".nix")
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
