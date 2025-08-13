{pkgs, ...}: {
  imports = [
    ./niri/default.nix

    ./shell/kitty.nix
    ./shell/nushell.nix
    ./shell/starship.nix

    ./wm/rofi.nix
    ./wm/fuzzel.nix
  ];
}
