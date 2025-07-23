{
    imports = [
        ./extension.nix
        ./profiles.nix
        ./usersettings.nix
    ];
    programs.vscode = {
        enable = true;
    };
}