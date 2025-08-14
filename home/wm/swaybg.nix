{pkgs, ...}: let
  wallpaper = ../../assets/sci-fi.png;
in {
  home.packages = with pkgs; [
    swaybg
  ];

  # home.file.".local/share/my-wallpapers/sci-fi.png" = {
  #   source = ../../assets/sci-fi.png;
  # };

  systemd.user.services.swaybg = {
    Unit = {
      Description = "Sway Wallpaper Background";
      After = ["graphical-session.target"];
    };

    Service = {
      Type = "exec";
      ExecStart = "${pkgs.swaybg}/bin/swaybg -i ${wallpaper}";
      Restart = "always";
      RestartSec = "5";
    };

    Install = {
      WantedBy = ["graphical-session.target"];
    };
  };
}
