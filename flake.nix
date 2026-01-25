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

    # nvf = {
    #   url = "github:NotAShelf/nvf";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
    nixcat-nvim = {
      url = "path:./nixcat-nvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    alejandra,
    nixcat-nvim,
    # nvf,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};

    mkSystem = hostConfig:
      nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {inherit inputs;};
        modules = [
          hostConfig
          {
            environment.systemPackages = [alejandra.defaultPackage.${system}];
          }
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.nixos = import ./home;
            home-manager.extraSpecialArgs = {inherit inputs;};
          }
        ];
      };
  in {
    packages.${system} = {
      hello = pkgs.hello;
      default = self.packages.${system}.hello;
    };

    nixosConfigurations = {
      vm = mkSystem ./hosts/vm/configuration.nix;
      thinkbook = mkSystem ./hosts/thinkbook/configuration.nix;
      hpzhan = mkSystem ./hosts/hpzhan/configuration.nix;
      tx = mkSystem ./hosts/tx/configuration.nix;
    };
  };
}
