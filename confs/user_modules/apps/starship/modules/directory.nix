{
    programs.starship = {
        settings = {
            directory = {
                disabled = false;
                fish_style_pwd_dir_length = 0;
                format = "[$path]($style)[$read_only]($read_only_style) ";
                home_symbol = " ";
                read_only = " ";
                read_only_style = "red";
                repo_root_format = "[$before_root_path]($style)[$repo_root]($repo_root_style)[$path]($style)[$read_only]($read_only_style) ";
                style = "cyan bold bg:0xDA627D";
                truncate_to_repo = true;
                truncation_length = 3;
                truncation_symbol = "…/";
                use_logical_path = true;
                use_os_path_sep = true;
            };
            directory.substitutions = {
                # Here is how you can shorten some long paths by text replacement;
                # similar to mapped_locations in Oh My Posh:;
                "Documents" = " ";
                "Downloads" = " ";
                "Music" = " ";
                "Pictures" = " ";
                # Keep in mind that the order matters. For example:;
                # "Important Documents" = "  ";
                # will not be replaced, because "Documents" was already substituted before.;
                # So either put "Important Documents" before "Documents" or use the substituted version:;
                # "Important  " = "  ";
                "Important " = " ";
            };
        };
    };
}