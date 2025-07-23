{ pkgs, userSettings, ... }:
{
    # User account
    users.users.${userSettings.username} = {
        isNormalUser = true;
        description = userSettings.name;
        extraGroups = [ "networkmanager" "wheel" "video" "audio" ];
        shell = pkgs.zsh;
        packages = [];
    };
}