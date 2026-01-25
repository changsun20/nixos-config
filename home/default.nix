{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ./core
    ./shell
    ./cli
    # ./dconf
    ./gui
    ./coding
  ];
}
