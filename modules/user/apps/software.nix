{ pkgs, lib, ... }:
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

        # Required for icon display
        papirus-icon-theme
    ];
    home.activation.setExoTerminal = lib.hm.dag.entryAfter ["writeBoundary"] ''
        mkdir -p ~/.config/xfce4
        echo "[Default Applications]" > ~/.config/xfce4/helpers.rc
        echo "TerminalEmulator=alacritty.desktop" >> ~/.config/xfce4/helpers.rc
    '';
}
