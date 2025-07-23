{
    programs.starship = {
        settings = {
            c = {
            format = "[$symbol($version(-$name) )]($style)";
            version_format = "v$raw";
            style = "fg:149 bold bg:0x86BBD8";
            symbol = " ";
            disabled = false;
            detect_extensions = [
                "c"
                "h"
            ];
            detect_files = [];
            detect_folders = [];
            commands = [
                [
                    "cc"
                    "--version"
                ]
                [
                    "gcc"
                    "--version"
                ]
                [
                    "clang"
                    "--version"
                ]
            ];
        };
        };
    };
}