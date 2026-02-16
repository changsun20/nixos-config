{
  config,
  lib,
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    nodejs
    pnpm
    hexo-cli
  ];
}
