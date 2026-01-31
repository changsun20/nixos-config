{pkgs, ...}: {
  imports = [
    ./rust.nix
    ./go.nix
    ./c.nix
    ./zig.nix
    ./latex.nix
    ./direnv.nix
    ./python.nix
    ./java.nix
    ./common-lisp.nix
  ];
}
