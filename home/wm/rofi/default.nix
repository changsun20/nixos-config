{pkgs, ...}: {
  programs.rofi = {
    enable = true;
    modes = [
      "run"
      # "drun"
    ];
    theme = "material";
  };
}
