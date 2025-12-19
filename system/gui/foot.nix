{pkgs, ...}: {
  programs.foot = {
    enable = true;
    theme = "tokyonight-night";
    settings = {
      main = {
        font = "JetbrainsMono Nerd Font:size=20";
        initial-window-mode = "maximized";
      };
      scrollback.lines = 10000;
      csd = {
        preferred = "none";
        size = 0;
      };
    };
  };
}
