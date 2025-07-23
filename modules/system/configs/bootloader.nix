{ systemSettings, ... }:
{
    # Bootloader GPT
    boot.loader.systemd-boot.enable = if(systemSettings.bootMode == "uefi") then true else false;
    boot.loader.efi.canTouchEfiVariables = if(systemSettings.bootMode == "uefi") then true else false;

    # Bootloader MBR
    boot.loader.grub.enable = if(systemSettings.bootMode == "uefi") then false else true;
    boot.loader.grub.device = systemSettings.grubDevice;
    boot.loader.grub.useOSProber = if(systemSettings.bootMode == "uefi") then false else true;

    # Mount NTFS
    boot.supportedFilesystems = [ "ntfs" ];
}
