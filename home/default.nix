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
    inputs.nixcat-nvim.homeModules.default
  ];
  nvim.enable = true;
}
