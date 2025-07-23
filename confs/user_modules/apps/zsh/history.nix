{
    programs.zsh = {
        history = {
            size = 10000;
            save = 10000;
            expireDuplicatesFirst = true;
            path = "$HOME/.zsh_history";
            ignoreAllDups = true;
            saveNoDups = true;
        };
    };
}