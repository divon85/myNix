{
    wayland.windowManager.hyprland = {
        extraConfig = ''
            # Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
            bind = SUPER, RETURN, exec, alacritty                                                       # Open Alactritty
            bind = SUPER, Q, killactive                                                                 # Close current window
            bind = SUPER CTRL, Q, exit                                                                  # Exit Hyprland
            bind = SUPER, L, exec, ~/.dotfiles/modules/user/wm/hyprland/scripts/logout.sh               # Close current window
            bind = SUPER, C, exec, ~/.dotfiles/modules/user/wm/hyprland/scripts/editor.sh               # Open text editor
            bind = SUPER ALT, E, exec, ~/.dotfiles/modules/user/wm/hyprland/scripts/filemanager.sh      # Opens the filemanager
            bind = SUPER, E, exec, alacritty -e yazi                                                    # Open terminal filemanager
            bind = SUPER, T, togglefloating                                                             # Toggle between tiling and floating window
            bind = SUPER, F, fullscreen                                                                 # Open the window in fullscreen
            bind = SUPER, SPACE, exec, rofi -show drun                                                  # Open rofi
            bind = SUPER, P, pseudo,                                                                    # dwindle
            bind = SUPER, J, togglesplit,                                                               # dwindle
            bind = SUPER, B, exec, ~/.dotfiles/modules/user/wm/hyprland/scripts/browser.sh              # Opens the browser
            bind = SUPER, R, exec, retroarch
            binde = ALT,Tab,cyclenext
            binde = ALT,Tab,bringactivetotop

            # Move focus with mainMod + arrow keys
            bind = SUPER, left, movefocus, l # Move focus left
            bind = SUPER, right, movefocus, r # Move focus right
            bind = SUPER, up, movefocus, u # Move focus up
            bind = SUPER, down, movefocus, d # Move focus down
            bind = SUPER ALT, left, swapwindow, l                                                       # Swap tiled window left
            bind = SUPER ALT, right, swapwindow, r                                                      # Swap tiled window right
            bind = SUPER ALT, up, swapwindow, u                                                         # Swap tiled window up
            bind = SUPER ALT, down, swapwindow, d                                                       # Swap tiled window down

            # Resize tiling
            bind = SUPER SHIFT, right, resizeactive, 100 0                                              # Increase window width with keyboard
            bind = SUPER SHIFT, left, resizeactive, -100 0                                              # Reduce window width with keyboard
            bind = SUPER SHIFT, down, resizeactive, 0 100                                               # Increase window height with keyboard
            bind = SUPER SHIFT, up, resizeactive, 0 -100                                                # Reduce window height with keyboard

            # Switch workspaces with mainMod + [0-9]
            bind = SUPER, 1, workspace, 1 # Switch to workspace 1
            bind = SUPER, 2, workspace, 2 # Switch to workspace 2
            bind = SUPER, 3, workspace, 3 # Switch to workspace 3
            bind = SUPER, 4, workspace, 4 # Switch to workspace 4
            bind = SUPER, 5, workspace, 5 # Switch to workspace 5
            bind = SUPER, 6, workspace, 6 # Switch to workspace 6
            bind = SUPER, 7, workspace, 7 # Switch to workspace 7
            bind = SUPER, 8, workspace, 8 # Switch to workspace 8
            bind = SUPER, 9, workspace, 9 # Switch to workspace 9
            bind = SUPER, 0, workspace, 10 # Switch to workspace 10

            # Move active window to a workspace with mainMod + SHIFT + [0-9]
            bind = SUPER SHIFT, 1, movetoworkspace, 1 #  Move window to workspace 1
            bind = SUPER SHIFT, 2, movetoworkspace, 2 #  Move window to workspace 2
            bind = SUPER SHIFT, 3, movetoworkspace, 3 #  Move window to workspace 3
            bind = SUPER SHIFT, 4, movetoworkspace, 4 #  Move window to workspace 4
            bind = SUPER SHIFT, 5, movetoworkspace, 5 #  Move window to workspace 5
            bind = SUPER SHIFT, 6, movetoworkspace, 6 #  Move window to workspace 6
            bind = SUPER SHIFT, 7, movetoworkspace, 7 #  Move window to workspace 7
            bind = SUPER SHIFT, 8, movetoworkspace, 8 #  Move window to workspace 8
            bind = SUPER SHIFT, 9, movetoworkspace, 9 #  Move window to workspace 9
            bind = SUPER SHIFT, 0, movetoworkspace, 10 #  Move window to workspace 10

            # Scroll through existing workspaces with mainMod + scroll
            bind = SUPER, mouse_down, workspace, e+1 # Scroll workspaces 
            bind = SUPER, mouse_up, workspace, e-1 # Scroll workspaces

            # Move/resize windows with mainMod + LMB/RMB and dragging
            bindm = SUPER, mouse:272, movewindow # Move window
            bindm = SUPER, mouse:273, resizewindow # Resize window

            # Fn keys
            bind = , XF86MonBrightnessUp, exec, brightnessctl -q s 10%+
            bind = , XF86MonBrightnessDown, exec, brightnessctl -q s 10%-
            # bind = , XF86AudioRaiseVolume, exec, pactl set-sink-volume @DEFAULT_SINK@ +5%
            # bind = , XF86AudioLowerVolume, exec, pactl set-sink-volume @DEFAULT_SINK@ -5%
            bindle=, XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 2%+
            bindle=, XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%-
            bind = , XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
            bind = , XF86AudioPlay, exec, playerctl play-pause
            bind = , XF86AudioPause, exec, playerctl pause
            bind = , XF86AudioNext, exec, playerctl next
            bind = , XF86AudioPrev, exec, playerctl previous
            bind = , XF86AudioMicMute, exec, pactl set-source-mute @DEFAULT_SOURCE@ toggle
            bind = , XF86Calculator, exec, qalculate-gtk
            bind = , XF86Lock, exec, hyprlock
        '';
    };
}