{pkgs, ...}: {
  imports = [
    ./nushell.nix
    ./starship.nix
    ./kitty.nix
  ];
}
