{ pkgs, ... }:
{
  programs.waybar.settings = {
    mainBar = {
      layer = "top";
      position = "top";
      height = 36;
      spacing = 8;
      margin-top = 3;
      margin-right = 3;
      margin-left = 3;

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
        format-icons = [
          "󰤯"
          "󰤟"
          "󰤢"
          "󰤥"
          "󰤨"
        ];
        format-disconnected = "󰖪";
        on-click = "foot nmtui";
      };

      backlight = {
        format = "{icon} {percent}%";
        format-icons = [
          "󰃜"
          "󰃛"
          "󰃚"
        ];
      };

      wireplumber = {
        format = "{icon} {volume}%";
        format-muted = "󰖁";
        format-icons = [
          "󰕿"
          "󰖀"
          "󰕾"
        ];
      };

      memory = {
        interval = 5;
        format = "󰍛 {used:0.2f}GB";
        on-click = "foot htop";
      };

      cpu = {
        interval = 5;
        format = "󰻠 {usage}%";
        on-click = "foot htop";
      };
    };
  };
}
