{
    imports = [
        ./aliases.nix
        ./history.nix
        ./initContent.nix
        ];
    programs.zsh = {
        enable = true;
        autocd = true;
        autosuggestion.enable = true;
        syntaxHighlighting.enable = true;
        enableCompletion = true;
        dotDir = ".config/zsh";
    };
}
