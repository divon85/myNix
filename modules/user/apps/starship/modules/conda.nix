{
    programs.starship = {
        settings = {
            conda = {
                truncation_length = 1;
                format = "[$symbol$environment]($style) ";
                symbol = " ";
                style = "green bold";
                ignore_base = true;
                disabled = false;
            };
        };
    };
}