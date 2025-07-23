{
    programs.starship = {
        settings = {
            time = {
                format = "[$symbol $time]($style) ";
                style = "bold yellow bg:0x33658A";
                use_12hr = false;
                disabled = false;
                utc_time_offset = "local";
                # time_format = "%R"; # Hour:Minute Format;
                time_format = "%T"; # Hour:Minute:Seconds Format;
                time_range = "-";
            };
        };
    };
}