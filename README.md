# My NixOS configuration

## Table of Contents
[Introduction](#introduction)  
[Versions changelog](#versions-changelogs)  
[Not yet implemented](#not-yet-implemented)

## Introduction
This is the dotfiles for NixOS, installed apps are:
1. System apps (available in confs/system_modules/apps/software.nix):
   - Base
        |Apps|Apps|Apps|Apps|Apps|Apps|Apps|Apps|
        |---|---|---|---|---|---|---|---|
        |neovim|wget|git|alacritty|zsh|wpgtk|python3|ffmpeg|
        |fastfetch|ntfs3g|starship|brightnessctl|pipewire|pwvucontrol|file|p7zip|
        |jq|poppler|fd|ripgrep|fzf|zoxide|resvg|imagemagick|
   - Apps
        |Apps|Apps|Apps|Apps|Apps|Apps|Apps|Apps|
        |---|---|---|---|---|---|---|---|
        |yazi|xfce.thunar|xfce.thunar-archive-plugin|xfce.thunar-volman|xfce.tumbler|ffmpegthumbnailer|gvfs|celluloid|
        |firefox|grimblast|
   - Programming
        |Apps|Apps|Apps|Apps|Apps|Apps|Apps|Apps|
        |---|---|---|---|---|---|---|---|
        |libgcc|julia|conda|
   - Fonts
        |Name|Name|Name|Name|Name|Name|Name|Name|
        |---|---|---|---|---|---|---|---|
        |noto-fonts-cjk-sans|noto-fonts-cjk-serif|noto-fonts-emoji|font-awesome|nerd-fonts.symbols-only|fira-sans|fira-code|fira-code-symbols|
        |roboto|liberation_ttf|texlivePackages.japanese-otf|
2. User apps (available in confs/user_modules/apps/software.nix):
   - Games: Retroarch
   - Text editor: VSCode
   - Fonts
        |Name|Name|Name|Name|
        |---|---|---|---|
        |noto-fonts-cjk-sans|noto-fonts-cjk-serif|noto-fonts-emoji|font-awesome|
        |nerd-fonts.symbols-only|fira-sans|fira-code|fira-code-symbols|
        |roboto|liberation_ttf|texlivePackages.japanese-otf|
   - Apps: yazi, celluloid
3. Desktop Environment: hyprland, with keybindings:
   |Key|Action|
   |---|---|
   |SUPER, RETURN|Open terminal|
   |SUPER, Q|Kill active|
   |SUPER CTRL, Q|exit hyprland|
   |SUPER, L|wlogout|
   |SUPER, C|VSCode|
   |SUPER, B|Firefox|
   |SUPER, E|yazi|
   |SUPER ALT, E|Thunar|
   |SUPER, F|make active app fullscreen|

## Versions changelogs
### v0.0.1
1. Creating a version control for checking the installed dotfiles
2. The installer will perform fresh install when the version is not found.
3. If the version different, installer will copy the updated files and perform both system updates and home manager updates.

### v0.0.2
1. Fix the default editor to neovim
2. Restructure the apps, remove fonts from system software.
3. Fix the update method by copying all the files instead only the updated to avoid further errors.

## Not yet Implemented
1. Login screen
2. Customized wlogout
3. etc...