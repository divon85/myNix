{
    imports = [
        ./style.nix
    ];
    xdg.configFile."wlogout/layout".source = ./layout.json;
}
