{pkgs, ...}: let
  style-path = ./style.css;
in {
  imports = [
    ./settings.nix
  ];

  programs.waybar = {
    enable = true;
    style = "${style-path}";
  };

  systemd.user.services.waybar = {
    Unit = {
      Description = "Waybar for WM";
      PartOf = ["graphical-session.target"];
      After = ["graphical-session.target"];
      Requisite = ["graphical-session.target"];
    };

    Service = {
      Type = "exec";
      ExecStart = "${pkgs.waybar}/bin/waybar";
      Restart = "always";
      RestartSec = "5";
    };

    Install = {
      WantedBy = ["niri.service"];
    };
  };
}
