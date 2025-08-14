{pkgs, ...}: {
  programs.waybar = {
    enable = true;
  };

  systemd.user.services.waybar = {
    Unit = {
      Description = "Waybar for WM";
      After = ["graphical-session.target"];
    };

    Service = {
      Type = "exec";
      ExecStart = "${pkgs.waybar}/bin/waybar";
      Restart = "always";
      RestartSec = "5";
    };

    Install = {
      WantedBy = ["graphical-session.target"];
    };
  };
}
