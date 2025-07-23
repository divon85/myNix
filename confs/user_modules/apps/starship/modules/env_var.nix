{
    programs.starship = {
        settings = {
            env_var = {};
            env_var.SHELL = {
                format = "[$symbol($env_value )]($style)";
                style = "grey bold italic dimmed";
                symbol = "e:";
                disabled = true;
                variable = "SHELL";
                default = "unknown shell";
            };
            env_var.USER = {
                format = "[$symbol($env_value )]($style)";
                style = "grey bold italic dimmed";
                symbol = "e:";
                disabled = true;
                default = "unknown user";
            };
        };
    };
}