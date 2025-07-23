{
    programs.starship = {
        settings = {
            cobol = {
                format = "[$symbol($version )]($style)";
                version_format = "v$raw";
                symbol = "⚙️ ";
                style = "bold blue";
                disabled = false;
                detect_extensions = [
                    "cbl"
                    "cob"
                    "CBL"
                    "COB"
                ];
                detect_files = [];
                detect_folders = [];
            };
        };
    };
}