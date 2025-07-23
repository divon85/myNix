### Backup files
installed_version=$(cat "$SCRIPT_DIR/.version")
if [ -d "$SCRIPT_DIR/$installed_version" ]; then
    echo "The dotfiles already has backup"
else
    mkdir -p ".backup/$installed_version"
    rsync -avhp -I "$SCRIPT_DIR/." ".backup/$installed_version"
fi