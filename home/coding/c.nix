{
  config,
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    # clang
    gnumake
    cmake
    gcc
    gdb
    clang-tools
    valgrind
  ];
  # programs.gcc.enable = true;
}
