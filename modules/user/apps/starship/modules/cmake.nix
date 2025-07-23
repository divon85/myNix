{
    programs.starship = {
        settings = {
            cmake = {
                format = "[$symbol($version )]($style)";
                version_format = "v$raw";
                symbol = "△ ";
                style = "bold blue";
                disabled = false;
                detect_extensions = [];
                detect_files = [
                    "CMakeLists.txt"
                    "CMakeCache.txt"
                ];
                detect_folders = [];
            };
        };
    };
}