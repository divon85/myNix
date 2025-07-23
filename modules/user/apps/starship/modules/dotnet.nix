{
    programs.starship = {
        settings = {
            dotnet = {
                format = "[$symbol($version )(🎯 $tfm )]($style)";
                version_format = "v$raw";
                symbol = "🥅 ";
                style = "blue bold";
                heuristic = true;
                disabled = false;
                detect_extensions = [
                    "csproj"
                    "fsproj"
                    "xproj"
                ];
                detect_files = [
                    "global.json"
                    "project.json"
                    "Directory.Build.props"
                    "Directory.Build.targets"
                    "Packages.props"
                ];
                detect_folders = [];
            };
        };
    };
}