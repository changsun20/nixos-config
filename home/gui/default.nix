{
  config,
  pkgs,
  ...
}: {
  imports = [
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
    # kooha
  ];

  # services.flameshot.enable = true;
}
