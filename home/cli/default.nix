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
    lshw
    tree

    # Dev tools
    xh
    just
    scc
    # github-copilot-cli
    gemini-cli
    hyperfine

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

    # Info tools
    tlrc
    kiwix-tools
    lynx
  ];
}
