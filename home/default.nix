{
  pkgs,
  inputs,
  ...
}:
{
  imports = [
    ./core
    ./shell
    ./cli
    ./gui
    ./coding
  ];
}
