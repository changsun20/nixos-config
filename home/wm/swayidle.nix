{pkgs, ...}: let
  lock = "${pkgs.swaylock}/bin/swaylock --daemonize";
  display = status: "${pkgs.niri}/bin/niri msg action power-${status}-monitors";
in {
  services.swayidle = {
    enable = true;
    timeouts = [
      {
        timeout = 290;
        command = "${pkgs.libnotify}/bin/notify-send 'Locking in 10 seconds' -t 10000";
      }
      {
        timeout = 300;
        command = lock;
      }
      {
        timeout = 310;
        command = display "off";
        resumeCommand = display "on";
      }
      {
        timeout = 320;
        command = "${pkgs.systemd}/bin/systemctl suspend";
      }
    ];

    events = [
      {
        event = "before-sleep";
        # adding duplicated entries for the same event may not work
        command = (display "off") + "; " + lock;
      }
      {
        event = "after-resume";
        command = display "on";
      }
      {
        event = "lock";
        command = (display "off") + "; " + lock;
      }
      {
        event = "unlock";
        command = display "on";
      }
    ];
  };

  systemd.user.services.swayidle = {
    Unit = {
      After = ["niri.service"];
      Requisite = ["niri.service"];
    };
    Install.WantedBy = ["niri.service"];
  };
}
