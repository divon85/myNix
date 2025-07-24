{
    imports = [
        ./conf/binds.nix
    ];
    xsession.windowManager.i3 = {
        enable = true;
        package = pkgs.i3-gaps;
        gaps = {
            inner = 10;
            outer = 5;
        }
    };
}