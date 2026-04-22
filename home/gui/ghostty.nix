{
  config,
  lib,
  pkgs,
  ...
}:
{
  programs.ghostty = {
    enable = true;

    enableFishIntegration = true;

    settings = {
      font-family = "Maple Mono NF CN";
      font-size = 16;
      maximize = true;
      window-decoration = "none";
      theme = "TokyoNight";
      background-opacity = "0.95";
    };
  };
}
