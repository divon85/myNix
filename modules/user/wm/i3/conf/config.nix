{
    xsession.windowManager.i3 = {
        config = {
            modifier = "Mod4";
            gaps = {
                inner = 10;
                outer = 5;
            };
            bars = [
                {
                    position = "top";
                    statusCommand = "${pkgs.i3status}/bin/i3status";
                }
            ];
        };
    };
}