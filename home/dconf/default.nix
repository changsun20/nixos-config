{pkgs, ...}: {
  imports = [
    ./input-sources.nix
    ./extensions.nix
  ];
}
