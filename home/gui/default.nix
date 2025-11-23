{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./mullvad.nix
  ];

  home.packages = with pkgs; [
    obsidian
    nautilus
  ];
}
