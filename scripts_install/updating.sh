## Copy files
## Credit to MyLinux4Work
echo "Copy files to $SCRIPT_DIR"
if [ -f "$INSTALLER_DIR/"excludes.txt ]; then
    rsync -avhp -I --exclude-from="$INSTALLER_DIR/"excludes.txt "$INSTALLER_DIR/." "$SCRIPT_DIR"
else
    echo "excludes.txt not found...!!! Aborting installation."
    echo "Please redownload complete dotfiles from the repository."
    exit 1
fi

## Copy hardware-configuration.nix
if [ -f /etc/nixos/hardware-configuration.nix ]; then
    echo "Copying hardware-configuration.nix to $SCRIPT_DIR"
    cp /etc/nixos/hardware-configuration.nix "$SCRIPT_DIR/modules/system/hardware-configuration.nix"
else
    echo "No hardware-configuration.nix found, skipping copy."
fi

## Rebuild the system
## Credit to Librephoenix
echo "Rebuilding the system with the new dotfiles"
sudo nixos-rebuild switch --flake "$SCRIPT_DIR#nixhost"

## Install home-manager
## Credit to Librephoenix
echo "Installing home-manager"
home-manager switch --flake "$SCRIPT_DIR#nixuser"