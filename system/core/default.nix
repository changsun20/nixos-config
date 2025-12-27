{pkgs, ...}: {
  imports = [
    ./i18n.nix
    ./console.nix
    ./opengl.nix
    # ./gnome.nix
    ./allow-unfree.nix
    ./cosmic.nix
    # ./kde.nix
    # ./xfce.nix
  ];
}
