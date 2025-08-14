{pkgs, ...}: {
  imports = [
    ./fuzzel.nix
    # ./dunst.nix
    ./swaybg.nix
    ./mako.nix
    ./waybar.nix
  ];
}
