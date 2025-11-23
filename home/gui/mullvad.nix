{
  config,
  pkgs,
  ...
}: {
  programs.mullvad-vpn = {
    enable = true;
    # package = pkgs.mullvad;
    # settings = {
    #   autoConnect = true;
    # };
  };
}
