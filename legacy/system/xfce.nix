{pkgs, ...}: {
  nixpkgs.config.pulseaudio = true;
  services.xserver = {
    enable = true;
    desktopManager = {
      xterm.enable = true;
      xfce.enable = true;
    };

    # displayManager.lightdm = {
    #   enable = true;
    #   greeters.gtk.enable = true;
    # };
  };
  services.displayManager.defaultSession = "xfce";
}
