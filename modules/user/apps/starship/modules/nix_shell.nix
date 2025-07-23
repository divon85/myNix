{
    programs.starship = {
        settings = {
            nix_shell = {
                format = "[$symbol$state( ($name))]($style) ";
                disabled = false;
                impure_msg = "[impure](bold red)";
                pure_msg = "[pure](bold green)";
                style = "bold blue";
                symbol = " ";
            };
        };
    };
}