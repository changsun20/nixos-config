{pkgs, ...}: {
  programs.waybar.settings = {
    mainBar = {
      layer = "top";
      position = "top";
      height = 40;
      spacing = 16;
      margin-top = 5;
      margin-right = 5;

      modules-left = [
        "cpu"
        "memory"
      ];

      modules-center = [
        "niri/workspaces"
      ];

      modules-right = [
        "network"
        "wireplumber"
        "backlight"
        "clock"
      ];

      "niri/workspaces" = {
        all-outputs = false;
        disable-click = false;
        format = "{icon}";
        format-icons = {
          active = "󰝥";
          default = "󰝦";
        };
      };

      network = {
        format = "{icon}";
        tooltip-format = "{ifname}";
        format-icons = ["󰤯" "󰤟" "󰤢" "󰤥" "󰤨"];
        format-disconnected = "󰖪";
        on-click = "foot nmtui";
      };

      backlight = {
        format = "{icon} {percent}%";
        format-icons = ["󰃜" "󰃛" "󰃚"];
      };

      wireplumber = {
        format = "{icon} {volume}%";
        format-muted = "󰖁";
        format-icons = ["󰕿" "󰖀" "󰕾"];
      };

      memory = {
        interval = 10;
        format = "󰍛 {used:0.2f}GB";
        on-click = "foot btop";
      };

      cpu = {
        interval = 5;
        format = "󰻠 {}%";
        on-click = "foot btop";
      };
    };
  };
}
