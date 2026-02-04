{
  config,
  pkgs,
  ...
}:
{
  home.username = "nixos";
  home.homeDirectory = "/home/nixos";

  home.enableNixpkgsReleaseCheck = false;

  home.stateVersion = "25.05";
}
