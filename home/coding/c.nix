{
  config,
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    # clang
    libclang
    valgrind
    gdb
    gcc
  ];
  # programs.gcc.enable = true;
}
