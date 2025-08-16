{pkgs, ...}: {
  imports = [
    ./fuzzel.nix
    ./swaybg.nix
    ./mako.nix
    ./waybar
    ./swayidle.nix
    ./swaylock.nix
    ./ibus.nix
    ./themes.nix
  ];
}
