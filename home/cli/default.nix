{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./gh.nix
  ];
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

    gzip
    bzip2
    xz
    zip
    unzip
    p7zip
    zstd
  ];
}
