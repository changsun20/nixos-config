{ pkgs, ... }:
{
  services.gammastep = {
    enable = true;
    temperature = {
      day = 4500;
      night = 4500;
    };
    latitude = 0.0;
    longitude = 0.0;
  };
}
