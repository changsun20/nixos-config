{pkgs, ...}: {
  programs.foot = {
    enable = true;
    theme = "tokyonight-night";
    settings = {
      main.font = "JetbrainsMono Nerd Font:size=20";
      scrollback.lines = 10000;
    };
  };
}
