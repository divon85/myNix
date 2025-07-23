{ pkgs, ... }:
{
    # Enable stylix
    stylix = {
        enable = true;
        image = ../../system_modules/style/tiger.png;
        fonts = {
            monospace = {
                package = pkgs.dejavu_fonts;
                name = "DejaVu Sans Mono";
            };
            sansSerif = {
                package = pkgs.dejavu_fonts;
                name = "DejaVu Sans";
            };
            serif = {
                package = pkgs.dejavu_fonts;
                name = "DejaVu Serif";
            };
            emoji = {
                package = pkgs.noto-fonts-emoji;
                name = "Noto Color Emoji";
            };
            sizes = {
                applications = 12;
                terminal = 15;
                desktop = 10;
                popups = 10;
            };
        };
        opacity = {
            applications = 1.0;
            terminal = 0.8;
            desktop = 1.0;
            popups = 1.0;
        };
        polarity = "dark";
    };
}
