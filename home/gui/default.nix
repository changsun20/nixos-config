{
  config,
  pkgs,
  ...
}:
{
  imports = [
    ./packages.nix
    ./firefox.nix
    ./vscode.nix
    ./thunderbird.nix
    ./zathura.nix
    ./fuzzel.nix
    ./doomemacs.nix
  ];
}
