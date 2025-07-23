{ systemSettings, ... }:
{
    # Enable networking
    networking.hostName = systemSettings.hostname; # Define your hostname.
    networking.networkmanager.enable = true;
}