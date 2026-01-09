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
    # kooha
  ];

  # services.flameshot.enable = true;
}
