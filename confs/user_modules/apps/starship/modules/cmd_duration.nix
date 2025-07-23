{
    programs.starship = {
        settings = {
            cmd_duration = {
                min_time = 2000;
                format = "⏱ [$duration]($style) ";
                style = "yellow bold";
                show_milliseconds = false;
                disabled = false;
                show_notifications = false;
                min_time_to_notify = 45000;
            };
        };
    };
}