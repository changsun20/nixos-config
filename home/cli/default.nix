{
  config,
  pkgs,
  ...
}:
{
  imports = [
    ./zellij.nix
    ./gh.nix
    ./lazygit.nix
    ./opencode.nix
    ./git.nix
    ./helix.nix
    # ./ollama.nix
    ./packages.nix
    ./tmux.nix
  ];
}
