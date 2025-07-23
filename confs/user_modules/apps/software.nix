{ pkgs, ... }:
{
    home.packages = with pkgs; [
        # Games
        (retroarch.withCores (cores: with cores;[
            mgba
            mesen
            genesis-plus-gx
            swanstation
        ]))

        # Editor
        vscode

        # Fonts
        noto-fonts-cjk-sans
        noto-fonts-cjk-serif
        noto-fonts-emoji
        font-awesome
        nerd-fonts.symbols-only
        fira-sans
        fira-code
        fira-code-symbols
        roboto
        liberation_ttf
        texlivePackages.japanese-otf
    ];

    fonts.fontconfig.enable = true;
}
