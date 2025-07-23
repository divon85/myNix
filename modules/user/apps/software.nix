{ pkgs, ... }:
{
    home.packages = with pkgs; [
        # Games
        (retroarch.withCores (cores: with cores;[
            mgba
            mesen
            genesis-plus-gx
            swanstation
        ]))

        # Editor
        vscode
    ];
}
