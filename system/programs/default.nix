{pkgs, ...}: {
  imports = [
    ./ly.nix
    ./mullvad.nix
    ./niri.nix
    ./foot.nix
  ];
}
