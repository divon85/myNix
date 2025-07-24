{ userSettings, ... }: {
    programs.git = {
        enable = true;
        lfs.enable = true;
        userName = userSettings.name;
        userEmail = userSettings.email;
    };
}