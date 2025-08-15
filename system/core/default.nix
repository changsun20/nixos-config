{pkgs, ...}: {
  imports = [
    ./i18n.nix
    ./console.nix
    ./opengl.nix
    ./xdg-portal.nix
  ];
}
