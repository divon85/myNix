{ config, pkgs, ... }:
{
    xdg = {
        enable = true;
        portal = {
            enable = true;
            extraPortals = [
                pkgs.xdg-desktop-portal
            ];
        };
        userDirs = {
            enable = true;
            createDirectories = true;
            documents = "${config.home.homeDirectory}/Documents";
            download = "${config.home.homeDirectory}/Downloads";
            music = "${config.home.homeDirectory}/Music";
            pictures = "${config.home.homeDirectory}/Pictures";
            extraConfig = {
                XDG_DOTFILES_DIR = "${config.home.homeDirectory}/.dotfiles";
                XDG_BOOK_DIR = "${config.home.homeDirectory}/Documents/Books";
                XDG_PROJECT_DIR = "${config.home.homeDirectory}/Documents/Projects";
                XDG_CONFIG_HOME = "${config.home.homeDirectory}/.config";
                XDG_RETROARCH_HOME = "${config.home.homeDirectory}/.config/retroarch";
            };
        };
    };
}