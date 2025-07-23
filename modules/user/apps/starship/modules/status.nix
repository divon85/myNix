{
    programs.starship = {
        settings = {
            status = {
                format = "[$symbol$status]($style) ";
                map_symbol = true;
                not_executable_symbol = "🚫";
                not_found_symbol = "🔍";
                pipestatus = false;
                pipestatus_format = "[$pipestatus] => [$symbol$common_meaning$signal_name$maybe_int]($style)";
                pipestatus_separator = "|";
                recognize_signal_code = true;
                signal_symbol = "⚡";
                style = "bold red bg:blue";
                success_symbol = "🟢 SUCCESS";
                symbol = "🔴 ";
                disabled = true;
            };
        };
    };
}