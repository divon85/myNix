#!/bin/sh

# Automated installation script for the dotfiles

## Copy downloaded files to the dotfiles directory
### Check directory
## Credit to Librephoenix
INSTALLER_DIR="$(dirname "$(realpath "$0")")"
if [ $# -gt 0 ]
    then
        SCRIPT_DIR=$1
    else
        SCRIPT_DIR=~/.dotfiles
fi

installer_version=$(cat "$INSTALLER_DIR/.version")

### Check installed version
if [ -d "$SCRIPT_DIR" ]; then
    if [ -f "$SCRIPT_DIR/.version" ]; then
        installed_version=$(cat "$SCRIPT_DIR/.version")
        if [ "$installer_version" = "$installed_version" ]; then
            echo "The installed version ($installed_version) is the same as the installer version ($installer_version)."
            echo
            if gum confirm "Do you still want to update?" ;then
                echo
                if gum confirm "Do you want to backup current installed?" ;then
                    echo "Create backup"
                    source $INSTALLER_DIR/scripts_install/backup.sh
                fi
                echo "Update existing dotfiles"
                echo "Copy new dotfiles"
                source $INSTALLER_DIR/scripts_install/remove_old_dotfiles.sh
                echo "Update nixos configs"
                source $INSTALLER_DIR/scripts_install/fresh_install.sh
                echo
            elif [ $? -eq 130 ]; then
                echo "Update canceled"
                exit 130
            else
                echo
                echo "Update canceled"
                exit;
            fi
        else
            if gum confirm "Do you want to backup current installed?" ;then
                echo "Create backup"
                source $INSTALLER_DIR/scripts_install/backup.sh
            fi
            echo "Updating from version $installed_version to $installer_version."
            source $INSTALLER_DIR/scripts_install/remove_old_dotfiles.sh
            source $INSTALLER_DIR/scripts_install/updating.sh
        fi
    else
        echo "No version file found in $SCRIPT_DIR. Removing the directory."
        source $INSTALLER_DIR/scripts_install/remove_old_dotfiles.sh
        source $INSTALLER_DIR/scripts_install/fresh_install.sh
    fi
else
    echo "No installed dotfiles found in $SCRIPT_DIR. Starting fresh installation."
    source $INSTALLER_DIR/scripts_install/fresh_install.sh
fi
