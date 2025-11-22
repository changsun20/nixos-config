{pkgs, ...}: {
  programs.foot = {
    enable = true;
    theme = "tokyonight-night";
    settings = {
      main.font = "JetbrainsMono Nerd Font:size=16";
      scrollback.lines = 10000;
    };
  };
}
