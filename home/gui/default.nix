{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./packages.nix
    ./firefox.nix
    ./vscode.nix
    ./thunderbird.nix
    ./zathura.nix
    ./fuzzel.nix
  ];

  home.packages = with pkgs; [
    obsidian
    nautilus
    loupe
    amberol
    celluloid
    bitwarden-desktop
    wechat-uos
    mullvad-browser
    zotero
  ];
}
