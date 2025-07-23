{
    programs.waybar = {
        settings = [{
            "height" = 25;
            "spacing" = 4;
            modules-left = [
                "hyprland/workspaces"
            ];
            modules-right = [
                "pulseaudio"
                "backlight"
                "bluetooth"
                "battery"
                "network"
                "clock"
            ];
            "hyprland/workspaces" = {
                "active-only" = false;
                "all-outputs" = true;
                "format" = {};
                "persistent-workspaces" = 1;
            };
            "pulseaudio" = {
                "format" = "{icon}  {volume}%";
                "format-bluetooth" = "{volume}% {icon} {format_source}";
                "format-bluetooth-muted" = " {icon} {format_source}";
                "format-muted" = " {format_source}";
                "format-source" = "{volume}% ";
                "format-source-muted" = "";
                "format-icons" = {
                    "headphone" = " ";
                    "hands-free" = " ";
                    "headset" = " ";
                    "phone" = " ";
                    "portable" = " ";
                    "car" = " ";
                    "default" = [" " " " " "];
                };
            };
            "backlight" = {
                "format" = "{percent}% {icon}";
                "format-icons" = ["" "" "" "" "" "" "" "" ""];
            };
            "bluetooth" = {
                "format" = " {status}";
                "format-disabled" = "";
                "format-off" = "";
                "interval" = 30;
                "on-click" = "blueman-manager";
                "format-no-controller" = "";
            };
            "battery" = {
                "states" = {
                    "warning" = 30;
                    "critical" = 15;
                };
                "format" = "{icon}   {capacity}%";
                "format-charging" = "  {capacity}%";
                "format-plugged" = "  {capacity}%";
                "format-alt" = "{icon}  {time}";
                "format-icons" = [" " " " " " " " " "];
            };
            "network" = {
                "format" = "{ifname}";
                "format-wifi" = "   {signalStrength}%";
                "format-ethernet" = "  {ifname}";
                "format-disconnected" = "Disconnected";
                "tooltip-format" = " {ifname} via {gwaddri}";
                "tooltip-format-wifi" = "  {ifname} @ {essid}\nIP: {ipaddr}\nStrength: {signalStrength}%\nFreq: {frequency}MHz\nUp: {bandwidthUpBits} Down: {bandwidthDownBits}";
                "tooltip-format-ethernet" = " {ifname}\nIP: {ipaddr}\n up: {bandwidthUpBits} down: {bandwidthDownBits}";
                "tooltip-format-disconnected" = "Disconnected";
                "max-length" = 50;
            };
            "clock" = {
                "tooltip-format" = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
                "format-alt" = "{:%Y-%m-%d}";
            };
        }];
    };
}
