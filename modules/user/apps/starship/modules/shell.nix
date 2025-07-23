{
    programs.starship = {
        settings = {
            shell = {
                format = "[$indicator]($style) ";
                bash_indicator = "bsh";
                cmd_indicator = "cmd";
                elvish_indicator = "esh";
                fish_indicator = "";
                ion_indicator = "ion";
                nu_indicator = "nu";
                powershell_indicator = "_";
                style = "white bold";
                tcsh_indicator = "tsh";
                unknown_indicator = "mystery shell";
                xonsh_indicator = "xsh";
                zsh_indicator = "zsh";
                disabled = false;
            };
        };
    };
}