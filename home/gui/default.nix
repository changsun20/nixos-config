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
    ./doomemacs.nix
  ];

  home.packages = with pkgs; [
    obsidian
    loupe
    amberol
    celluloid
    bitwarden-desktop
    wechat-uos
    mullvad-browser
    zotero
  ];
}
