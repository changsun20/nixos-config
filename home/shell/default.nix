{pkgs, ...}: {
  imports = [
    # ./nushell.nix
    ./starship.nix
    ./nvf.nix
  ];
}
