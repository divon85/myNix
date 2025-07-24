installed_version=$(cat "$SCRIPT_DIR/.version")
BACKUP_DIR="~/.backup/$installed_version"
if [ -d "$BACKUP_DIR" ]; then
    echo "The dotfiles already has backup"
    if gum confirm "Do you still want to perform backup?"; then
        sudo rm -rf "$BACKUP_DIR"
        mkdir -p "$BACKUP_DIR"
        rsync -avhp -I "$SCRIPT_DIR/." ".backup/$installed_version"
    fi
else
    mkdir -p "~/.backup/$installed_version"
    rsync -avhp -I "$SCRIPT_DIR/." ".backup/$installed_version"
fi