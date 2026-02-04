{
  pkgs,
  inputs,
  ...
}:
{
  imports = [
    inputs.nixcat-nvim.homeModules.default
  ];

  nvim.enable = true;
}
