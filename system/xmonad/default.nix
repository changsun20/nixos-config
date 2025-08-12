{pkgs, ...}: {
  services.xserver = {
    enable = true;
    windowManager.xmonad = {
      enable = true;
      enableContribAndExtras = true;
      config = builtins.readFile ./config.hs;
    };
    displayManager = {
      defaultSession = "none+xmonad";
      lightdm.greeters.enso = {
        enable = true;
      };
    };
  };

  services.displayManager = {
    defaultSession = "none+xmonad";
    # lightdm.greeters.enso = {
    #   enable = true;
    # };
  };
}
