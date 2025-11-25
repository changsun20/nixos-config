{pkgs, ...}: {
  imports = [
    ./foot.nix
    ./mullvad.nix
  ];
}
