{pkgs, ...}: {
  programs.rofi = {
    enable = true;
    modes = [
      "run"
      # "drun"
    ];
    theme = "material";
    font = "Noto Sans CJK SC 20";
  };
}
