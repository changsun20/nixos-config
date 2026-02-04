{ ... }:
{
  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot = {
    enable = true;
    # We don't neet too many versions of config
    configurationLimit = 20;
  };
  boot.loader.efi.canTouchEfiVariables = true;
}
