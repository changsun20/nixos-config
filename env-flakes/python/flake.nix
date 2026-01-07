{
  description = "Pure Python development environment using nixpkgs";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {inherit system;};

      # Pure Python environment with packages from nixpkgs
      pythonEnv = pkgs.python3.withPackages (ps:
        with ps; [
          # Add your packages here
          numpy
          matplotlib
          pandas
        ]);
    in {
      devShells.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          pythonEnv

          # Development tools
        ];

        shellHook = ''
          echo "Pure Nix Python environment activated"
          echo "Python: $(python --version)"
          echo "Available packages are managed purely through Nix"
          echo "To add packages, edit flake.nix and run 'nix flake lock --update-input nixpkgs'"
        '';
      };
    });
}
