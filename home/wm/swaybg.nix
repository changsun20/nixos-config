{pkgs, ...}: let
  wallpaper = ../../assets/sci-fi.png;
in {
  home.packages = with pkgs; [
    swaybg
  ];

  systemd.user.services.swaybg = {
    Unit = {
      Description = "Sway Wallpaper Background";
      PartOf = ["graphical-session.target"];
      After = ["graphical-session.target"];
      Requisite = ["graphical-session.target"];
    };

    Service = {
      Type = "exec";
      ExecStart = "${pkgs.swaybg}/bin/swaybg -i ${wallpaper}";
      Restart = "always";
      RestartSec = "5";
    };

    Install = {
      WantedBy = ["niri.service"];
    };
  };
}
