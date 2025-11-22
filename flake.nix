{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    alejandra = {
      url = "github:kamadorueda/alejandra/4.0.0";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nvf = {
      url = "github:NotAShelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    alejandra,
    nvf,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    packages.${system} = {
      hello = pkgs.hello;
      default = self.packages.${system}.hello;
    };

    nixosConfigurations = {
      vm = nixpkgs.lib.nixosSystem {
        inherit system;

        # specialArgs = {inherit inputs;};

        modules = [
          ./hosts/vm/configuration.nix

          {
            environment.systemPackages = [alejandra.defaultPackage.${system}];
          }

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.users.nixos = import ./home.nix;

            home-manager.extraSpecialArgs = {inherit inputs;};
          }
        ];
      };
      thinkbook = nixpkgs.lib.nixosSystem {
        inherit system;

        # specialArgs = {inherit inputs;};

        modules = [
          ./hosts/thinkbook/configuration.nix

          {
            environment.systemPackages = [alejandra.defaultPackage.${system}];
          }

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.users.nixos = import ./home.nix;

            home-manager.extraSpecialArgs = {inherit inputs;};
          }
        ];
      };
 
    };
  };
}
