{ pkgs, userSettings, inputs, ... }:
{
    home.username = userSettings.username;
    home.homeDirectory = "/home/"+userSettings.username;

    programs.home-manager.enable = true;

    imports = [
        ./apps/rofi/default.nix
        ./apps/starship/default.nix
        ./apps/vscode/default.nix
        ./apps/yazi/default.nix
        ./apps/zsh/default.nix
        ./apps/nvim/default.nix
        ./apps/software.nix
        ./style/stylix.nix
        #./system/icons.nix
        ./system/xdgs.nix
        (./. + "/wm"+("/"+userSettings.wm)+("/"+userSettings.wm)+".nix")
        inputs.stylix.homeModules.stylix
    ];

    home.stateVersion = "25.05";
}
