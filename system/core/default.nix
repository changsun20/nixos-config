{pkgs, ...}: {
  imports = [
    ./i18n.nix
    ./console.nix
    ./opengl.nix
    ./allow-unfree.nix
    ./cosmic.nix
    ./bootloader.nix
    ./nix.nix
    ./kernel.nix
    ./networking.nix
    ./timezone.nix
    ./users.nix
    ./state-version.nix
    ./cpu.nix
  ];
}
