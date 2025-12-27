{pkgs, ...}: {
  imports = [
    ./core
    ./shell
    ./cli
    # ./dconf
    ./gui
    ./coding
  ];
}
