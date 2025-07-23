### Copy files
## Credit to MyLinux4Work
echo "Fresh install to $SCRIPT_DIR."
if [ -f "$INSTALLER_DIR/"excludes.txt ]; then
    rsync -avhp -I --exclude-from="$INSTALLER_DIR/"excludes.txt "$INSTALLER_DIR/." "$SCRIPT_DIR"
else
    echo "excludes.txt not found...!!! Aborting installation."
    echo "Please redownload complete dotfiles from the repository."
    exit 1
fi

## Check bootloader
## Credit to Librephoenix
echo "Checking bootloader..."
if [ -d /sys/firmware/efi/efivars ]; then
    sed -i "0,/bootMode.*=.*\".*\";/s//bootMode = \"uefi\";/" $SCRIPT_DIR/flake.nix
else
    sed -i "0,/bootMode.*=.*\".*\";/s//bootMode = \"bios\";/" $SCRIPT_DIR/flake.nix
    grubDevice=$(findmnt / | awk -F' ' '{ print $2 }' | sed 's/\[.*\]//g' | tail -n 1 | lsblk -no pkname | tail -n 1 )
    sed -i "0,/grubDevice.*=.*\".*\";/s//grubDevice = \"\/dev\/$grubDevice\";/" $SCRIPT_DIR/flake.nix
fi

sed -i "0,/igor/s//$(whoami)/" $SCRIPT_DIR/flake.nix
sed -i "0,/Igor Novid/s//$(getent passwd $(whoami) | cut -d ':' -f 5 | cut -d ',' -f 1)/" $SCRIPT_DIR/flake.nix
sed -i "s/igornovid@outlook.com//" $SCRIPT_DIR/flake.nix
sed -i "s+~/.dotfiles+$SCRIPT_DIR+g" $SCRIPT_DIR/flake.nix

## Open up editor to manually edit flake.nix before install
if [ -z "$EDITOR" ]; then
    EDITOR=nano;
fi
$EDITOR $SCRIPT_DIR/flake.nix;
$EDITOR $SCRIPT_DIR/modules/user/wm/hyprland/conf/extraConfigs/monitor.nix;

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
nix run home-manager/master --extra-experimental-features 'nix-command flakes' -- switch --flake "$SCRIPT_DIR#nixuser"