### Backup files
installed_version=$(cat "$SCRIPT_DIR/.version")
if [ -d "$SCRIPT_DIR/$installed_version" ]; then
    echo "The dotfiles already has backup"
else
    mkdir "$SCRIPT_DIR/$installed_version"
    rsync -avhp -I "$SCRIPT_DIR/." "$SCRIPT_DIR/$installed_version"
fi