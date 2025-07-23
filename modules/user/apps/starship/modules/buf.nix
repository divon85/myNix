{
    programs.starship = {
        settings = {
            buf = {
                format = "[$symbol ($version)]($style)";
                version_format = "v$raw";
                symbol = "";
                style = "bold blue";
                disabled = false;
                detect_extensions = [];
                detect_files = [
                    "buf.yaml"
                    "buf.gen.yaml"
                    "buf.work.yaml"
                ];
                detect_folders = [];
            };
        };
    };
}