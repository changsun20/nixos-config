{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    alejandra.url = "github:kamadorueda/alejandra/4.0.0";
    alejandra.inputs.nixpkgs.follows = "nixpkgs";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # hyprland.url = "github:hyprwm/Hyprland";
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    alejandra,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    packages.${system} = {
      hello = pkgs.hello;
      default = self.packages.${system}.hello;
    };

    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      inherit system;

      # specialArgs = {inherit pkgs inputs;};

      modules = [
        ./configuration.nix

        {
          environment.systemPackages = [alejandra.defaultPackage.${system}];
        }

        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;

          home-manager.users.nixos = import ./home.nix;

          # extraSpecialArgs = {inherit inputs;};
        }

        # {
        #   wayland.windowManager.hyprland = {
        #     enable = true;
        #     # set the flake package
        #     package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
        #     portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
        #   };
        # }
      ];
    };
  };
}
