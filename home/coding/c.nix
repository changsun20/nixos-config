{
  config,
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    clang
    (lib.hiPrio pkgs.gcc)
    gnumake
    cmake
    clang-tools
    gdb
    valgrind
    neocmakelsp
  ];
  # programs.gcc.enable = true;
}
