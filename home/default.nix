{pkgs, ...}: {
  imports = [
    ./shell/kitty/default.nix

    ./wm/rofi/default.nix
  ];
}
