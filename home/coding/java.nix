{
  config,
  lib,
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    javaPackages.compiler.temurin-bin.jdk-25
  ];
}
