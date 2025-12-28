{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./zellij.nix
    ./gh.nix
  ];
  home.packages = with pkgs; [
    # System tools
    bat
    htop
    btop
    fastfetch
    dconf2nix
    tlrc
    lshw

    # Dev tools
    xh
    just
    tokei

    # Search tools
    ripgrep
    fzf
    fd

    # Compression tools
    gzip
    bzip2
    xz
    zip
    unzip
    p7zip
    zstd

    # Backup tools
    rclone
    rsync
  ];
}
