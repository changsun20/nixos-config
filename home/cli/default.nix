{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./zellij.nix
    ./gh.nix
    ./lazygit.nix
    ./opencode.nix
    ./git.nix
    ./helix.nix
    ./nvim.nix
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
    tree-sitter
    xh
    just
    scc
    gemini-cli
    hyperfine
    ffmpeg

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
  ];
}
