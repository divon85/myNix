{
    programs.starship = {
        settings = {
            julia = {
                disabled = false;
                format = "[$symbol($version )]($style)";
                style = "bold purple bg:0x86BBD8";
                symbol = " ";
                version_format = "v$raw";
                detect_extensions = ["jl"];
                detect_files = [
                    "Project.toml"
                    "Manifest.toml"
                ];
                detect_folders = [];
            };
        };
    };
}