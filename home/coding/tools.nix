{ pkgs, ... }:
{
  home.packages = with pkgs; [
    act
  ];

  programs.direnv = {
    enable = true;
  };
}
