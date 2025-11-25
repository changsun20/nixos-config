{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./mullvad.nix
    ./firefox.nix
  ];

  home.packages = with pkgs; [
    obsidian
    nautilus
    loupe
    amberol
    celluloid
  ];
}
