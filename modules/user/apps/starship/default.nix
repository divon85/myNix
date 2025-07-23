{
    imports = [
        ./modules/aws.nix
        ./modules/battery.nix
        ./modules/buf.nix
        ./modules/c.nix
        ./modules/character.nix
        ./modules/cmake.nix
        ./modules/cmd_duration.nix
        ./modules/cobol.nix
        ./modules/conda.nix
        ./modules/directory.nix
        ./modules/dotnet.nix
        ./modules/env_var.nix
        ./modules/git.nix
        ./modules/julia.nix
        ./modules/nix_shell.nix
        ./modules/php.nix
        ./modules/python.nix
        ./modules/shell.nix
        ./modules/status.nix
        ./modules/sudo.nix
        ./modules/time.nix
        ./modules/username.nix
    ];
    programs.starship = {
        enable = true;
        settings = {
            format = "[](#9A348E)$username$hostname$directory$git_branch$git_status$cmd_duration$time$line_break$character";
            add_newline = false;
        };
    };
}