{pkgs, ...}: {
  imports = [
    ./fuzzel.nix
    # ./dunst.nix
    ./bg.nix
    ./mako.nix
  ];
}
