{pkgs, ...}: {
  imports = [
    ./niri
    ./shell
    ./wm
    ./programs
  ];
}
