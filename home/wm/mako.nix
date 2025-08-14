{pkgs, ...}: {
  services.mako = {
    enable = true;
    settings = {
      font = "Noto Sans CJK SC 12";
      default-timeout = 5000;
      background-color = "#1e1e2edd";
      width = 300;
      height = 100;
      border-color = "#89dceb";
      border-size = 2;
      border-radius = 10;
      icons = true;
      layer = "top";

      # --- Section for low urgency ---
      "urgency=low" = {
      };

      # --- Section for high urgency ---
      "urgency=high" = {
        border-color = "#bf616a";
        default-timeout = 0; # Never automatically dismisses
      };
    };
  };
}
