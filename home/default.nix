{pkgs, ...}: {
  imports = [
    ./shell/kitty/default.nix
    ./shell/nushell/default.nix
    ./shell/starship/default.nix

    ./wm/rofi/default.nix
  ];
}
