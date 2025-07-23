{
    programs.starship = {
        settings = {
            aws = {
                format = "[$symbol($profile )(($region) )([$duration] )]($style)";
                symbol = "🅰 ";
                style = "bold yellow";
                disabled = false;
                expiration_symbol = "X";
                force_display = false;
            };
            aws.region_aliases = {};
            aws.profile_aliases = {};
            azure = {
                format = "[$symbol($subscription)([$duration])]($style) ";
                symbol = "ﴃ ";
                style = "blue bold";
                disabled = true;
            };
        };
    };
}