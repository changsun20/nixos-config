{pkgs, ...}: {
  imports = [
    ./base.nix
    ./ibus.nix
    ./fonts.nix
    ./keyring.nix
  ];
}
