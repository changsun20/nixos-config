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
    gdb
    clang
    (lib.hiPrio pkgs.gcc)
    clang-tools
    valgrind
    neocmakelsp
  ];
  # programs.gcc.enable = true;
}
