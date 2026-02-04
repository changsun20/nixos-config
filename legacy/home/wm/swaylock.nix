{ pkgs, ... }:
{
  programs.swaylock = {
    enable = true;

    settings = {
      ignore-empty-password = true;
      font-size = 24;
      show-failed-attempts = true;
      image = ../../assets/black-hole.png;
      scaling = "fill";
    };
  };
}
