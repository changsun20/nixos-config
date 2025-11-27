{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./firefox.nix
    ./vscode.nix
  ];

  home.packages = with pkgs; [
    obsidian
    nautilus
    loupe
    amberol
    celluloid
    bitwarden-desktop
  ];
}
