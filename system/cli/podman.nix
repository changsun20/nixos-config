{ pkgs, ... }:
{
  virtualisation = {
    containers.enable = true;
    podman = {
      enable = true;
      dockerCompat = true;
      defaultNetwork.settings.dns_enabled = true; # Required for containers under podman-compose to be able to talk to each other.
    };
  };

  environment.systemPackages = with pkgs; [
    podman-compose
  ];

  environment.variables = {
    PODMAN_COMPOSE_WARNING_LOGS = "false";
  };
  # users.users.nixos = {
  #   extraGroups = [
  #     "podman"
  #   ];
  # };
}
