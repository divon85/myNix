{
    wayland.windowManager.hyprland = {
        extraConfig = ''
            # QT
            env = QT_QPA_PLATFORM,wayland;xcb
            env = QT_QPA_PLATFORMTHEME,qt6ct
            env = QT_WAYLAND_DISABLE_WINDOWDECORATION,1
            env = QT_AUTO_SCREEN_SCALE_FACTOR,1
        '';
    };
}