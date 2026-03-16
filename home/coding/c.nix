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
    neocmakelsp
  ];
  # programs.gcc.enable = true;
}
