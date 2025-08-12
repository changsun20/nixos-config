{pkgs, ...}: {
  imports = [
    ./shell/kitty.nix
    ./shell/nushell.nix
    ./shell/starship.nix

    ./gui/rofi.nix
  ];
}
