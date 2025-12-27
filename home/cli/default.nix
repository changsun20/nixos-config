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
    dconf2nix
    just
    tlrc
    lshw

    ripgrep
    fzf
    fd

    gzip
    bzip2
    xz
    zip
    unzip
    p7zip
    zstd
  ];
}
