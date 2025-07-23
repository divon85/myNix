let

    zshAliases = {
        # -----------------------------------------------------
        # General
        # -----------------------------------------------------
        c = "clear";
        shutdown = "systemctl poweroff";
        v = "neovim";
        vs = "sudo neovim";
        relob = "source ~/.zshrc";
        wifi = "nmtui";
        sysup = "sudo nixos-rebuild switch --flake ~/.dotfiles#nixhost";
        homeup = "home-manager switch --flake ~/.dotfiles#nixuser";
        sysgc = "sudo nix-collect-garbage -d";
        homegc = "nix-collect-garbage -d";
        histc = "rm ~/.zsh_history";
        mountd = "udisksctl mount -b /dev/nvme0n1p1";
        unmountd = "udisksctl unmount -b /dev/nvme0n1p1";
        mounte = "udisksctl mount -b /dev/nvme0n1p2";
        unmounte = "udisksctl unmount -b /dev/nvme0n1p2";
    };

in
{
    programs.zsh.shellAliases = zshAliases;
}