{
    programs.zsh = {
        initContent = ''
            eval "$(starship init zsh)"

            if [ -f ~/.zsh_history ]; then
                alias turnoff='sudo shutdown -h now && rm ~/.zsh_history'
            else
                alias turnoff='sudo shutdown -h now'
            fi

            if [[ $(tty) == *"pts"* ]]; then
                fastfetch --config examples/13
            else
                echo
                if [ -f /bin/hyprctl ]; then
                    echo "Start Hyprland with command Hyprland"
                fi
            fi
        '';
    };
}