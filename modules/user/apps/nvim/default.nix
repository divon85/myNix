{
    imports = [
        ./extra.nix
    ];

    programs.neovim = {
        enable = true;
        defaultEditor = true;
        viAlias = true;
        vimAlias = true;
    };

    home.sessionVariables = {
        EDITOR = "nvim";
        VISUAL = "nvim";
    };
}
