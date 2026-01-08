{pkgs, ...}: {
  imports = [
    ./rust.nix
    ./go.nix
    ./c.nix
    ./zig.nix
    ./latex.nix
    # ./uv.nix
    ./direnv.nix
    ./python.nix
  ];
}
