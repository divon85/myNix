{ pkgs, ... }: {
    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    # List packages installed in system profile. To search, run:
    # $ nix search wget
    environment.systemPackages = with pkgs; [
        # Base
        neovim                                          #text editor
        wget                                            #terminal downloader
        git                                             # You know la...!!!
        alacritty                                       # Terminal
        zsh                                             # Shell engine
        wpgtk                                           # Color scheming
        python3                                         # still need comment?
        (ffmpeg-full.override { withUnfree = true; })   # Media codec
        fastfetch                                       # its fun
        ntfs3g                                          # mount and write ntfs drive
        starship                                        # terminal styling
        brightnessctl                                   # Adjust screen brightness
        pipewire                                        # Sound
        pwvucontrol                                     # Pipewire volume control
        file                                            # Program that shows the type of files
        p7zip                                           # Archive extraction and preview
        jq                                              # JSON preview
        poppler                                         # PDF viewer
        fd                                              # Fast file search
        ripgrep                                         # Fast text search
        fzf                                             # Fuzzy finder
        zoxide                                          # Fuzzy finder for command history
        resvg                                           # SVG rendering library
        imagemagick                                     # Image manipulation
        gum                                             # Enable options in shell scripts


        # File Manager
        yazi                                            # Terminal file manager
        gvfs                                            # For trash support, mounts

        # Apps
        grimblast                                       # Screenshot tools

        # Hyprland utils
        waybar                                          # Status bar
        rofi-wayland                                    # Application launcher
        wl-clipboard                                    # Clipboard functionality
        wlogout                                         # logout function
        hyprlock                                        # lockscreen in hyprland
        hypridle                                        # enable sleep when idling in hyprland
        hyprpaper                                       # wallpaper

        # Programming Language
        libgcc                                          # C and C++
        julia                                           # Julia programming
        conda

        # Utilities
        celluloid
        firefox                                         # Web browser
        xfce.thunar                                     # GUI file manager
        xfce.thunar-archive-plugin
        xfce.thunar-volman
        xfce.tumbler                                    # For Thunar thumbnails
        ffmpegthumbnailer                               # For video thumbnails
        evince

        # Fonts
        noto-fonts-cjk-sans
        noto-fonts-cjk-serif
        noto-fonts-emoji
        font-awesome
        nerd-fonts.symbols-only
        fira-sans
        fira-code
        fira-code-symbols
        roboto
        liberation_ttf
        texlivePackages.japanese-otf
    ];
}
