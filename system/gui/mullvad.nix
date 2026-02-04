{ pkgs, ... }:
{
  services.mullvad-vpn = {
    enable = true;
    package = pkgs.mullvad-vpn;
  };

  # services.resolved.enable = true;
  # boot.kernelModules = ["wireguard"];
}
