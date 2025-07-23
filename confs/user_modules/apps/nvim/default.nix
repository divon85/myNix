{
    imports = [
        ./extra.nix
    ];
    programs.neovim = {
        enable = true;
        defaultEditor = true;
    };
}