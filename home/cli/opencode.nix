{ pkgs, ... }:
{
  programs.opencode = {
    enable = true;
    tui = {
      theme = "tokyonight";
    };
  };
}
