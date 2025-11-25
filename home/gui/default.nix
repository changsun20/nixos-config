{
  config,
  pkgs,
  ...
}: {
  imports = [
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
