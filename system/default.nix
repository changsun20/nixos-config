{ pkgs, ... }:
{
  imports = [
    ./core
    ./cli
    ./gui
  ];
}
