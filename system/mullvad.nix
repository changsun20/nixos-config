{pkgs, ...}: {
  services.mullvad-vpn = {
    enable = true;
  };

  # services.resolved.enable = true;
  # boot.kernelModules = ["wireguard"];
}
