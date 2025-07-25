{
    programs = {
        firefox.enable = true;
        zsh.enable = true;
        nix-ld.enable = true;
        evince.enable = true;
        neovim = {
            enable = true;
            defaultEditor = true;	# Makes Neovim the system-wide default editor
            viAlias = true;		# Optional: makes 'vi' point to 'nvim'
            vimAlias = true;		# Optional: makes 'vim' point to 'nvim'
        };
    };
}
