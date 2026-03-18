{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nvf = {
      url = "github:NotAShelf/nvf";
      # You can override the input nixpkgs to follow your system's
      # instance of nixpkgs. This is safe to do as nvf does not depend
      # on a binary cache.
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      nvf,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};

      mkSystem =
        hostConfig:
        nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = { inherit inputs; };
          modules = [
            hostConfig
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.nixos = import ./home;
              home-manager.extraSpecialArgs = { inherit inputs; };
              home-manager.backupFileExtension = "backup";
            }
            nvf.nixosModules.default
          ];
        };
    in
    {
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
