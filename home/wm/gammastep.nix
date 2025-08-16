{pkgs, ...}: {
  services.gammastep = {
    enable = true;
    temperature = {
      day = 4500;
      night = 4500;
    };
  };
}
