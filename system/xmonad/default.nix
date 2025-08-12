{pkgs, ...}: {
  services = {
    xserver = {
      enable = true;

      windowManager.xmonad = {
        enable = true;
        enableContribAndExtras = true;
        config = builtins.readFile ./config.hs;
      };

      displayManager.lightdm.greeters.enso.enable = true;
    };

    displayManager.defaultSession = "none+xmonad";

    libinput = {
      enable = true;
      touchpad.naturalScrolling = true;
    };
  };
}
