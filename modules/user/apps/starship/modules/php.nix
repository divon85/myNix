{
    programs.starship = {
        settings = {
            php = {
                format = "[$symbol($version )]($style)";
                version_format = "v$raw";
                symbol = "🐘 ";
                style = "147 bold";
                disabled = false;
                detect_extensions = ["php"];
                detect_files = [
                    "composer.json"
                    ".php-version"
                ];
                detect_folders = [];
            };
        };
    };
}