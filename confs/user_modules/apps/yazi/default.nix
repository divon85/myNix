{
    stylix.targets.yazi.enable = true;
    imports = [
        ./manager.nix
        ./preview.nix
        ./tasks.nix
    ];
    programs.yazi = {
        enable = true;
        enableZshIntegration = true;
    };
}