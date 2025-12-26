{pkgs, ...}: {
  imports = [
    ./smartmontools.nix
    ./evremap.nix
  ];
}
