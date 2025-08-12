{pkgs, ...}: {
  services.xserver = {
    enable = true;
    windowManager.xmonad = {
      enable = true;
      enableContribAndExtras = true;
      config = builtins.readFile ./xmonad.hs;
    };
    displayManager = {
      defaultSession = "none+xmonad";
      lightdm.greeters.enso = {
        enable = true;
      };
    };
  };
}
