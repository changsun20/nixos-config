{pkgs, ...}: {
  imports = [
    ./fish.nix
    ./starship.nix
    ./nvf.nix
  ];
}
