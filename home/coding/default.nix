{ pkgs, ... }:
{
  imports = [
    ./rust.nix
    ./go.nix
    ./c.nix
    ./zig.nix
    ./latex.nix
    ./python.nix
    ./java.nix
    ./clojure.nix
    ./node.nix
    ./web3.nix
    ./tools.nix
  ];
}
