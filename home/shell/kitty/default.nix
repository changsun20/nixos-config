{pkgs, ...}: {
  programs.kitty = {
    enable = true;
    font = {
      name = "Fira Code";
      package = pkgs.fira-code;
      size = 22;
    };
    themeFile = "tokyo_night_night";
  };
}
