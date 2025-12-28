{pkgs, ...}: {
  imports = [
    ./smartmontools.nix
    ./evremap.nix
    ./fish.nix
    ./podman.nix
  ];
}
