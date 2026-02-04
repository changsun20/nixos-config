{ pkgs, ... }:
{
  services.wluma = {
    enable = true;
    settings = {
      als.none = { };

      output.backlight = [
        {
          name = "intel-backlight";
          path = "/sys/class/backlight/intel_backlight";
          capturer = "wayland";
        }
      ];
    };
  };

  systemd.user.services.wluma = {
    Unit = {
      After = [ "niri.service" ];
      PartOf = [ "niri.service" ];
      Requisite = [ "niri.service" ];
    };
    Install = {
      WantedBy = [ "niri.service" ];
    };
  };
}
