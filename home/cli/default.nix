{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    bat
    htop
    btop
    fastfetch
    xh
    ripgrep
    dconf2nix
    just
    tlrc
    lshw
  ];
}
