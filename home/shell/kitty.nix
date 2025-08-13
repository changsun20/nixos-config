{pkgs, ...}: {
  programs.kitty = {
    enable = true;
    font = {
      name = "Fira Code";
      package = pkgs.fira-code;
      size = 18;
    };
    themeFile = "tokyo_night_night";
    settings = {
      hide_window_decorations = "yes";
      linux_display_server = "auto";
    };
  };
}
