{pkgs, ...}: {
  imports = [
    ./niri.nix
    ./ly.nix
    ./i18n.nix
    ./mullvad.nix
    ./console.nix
  ];
}
