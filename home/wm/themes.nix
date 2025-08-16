{pkgs, ...}: {
  gtk = {
    enable = true;
    theme = {
      name = "Flat-Remix-GTK-Grey-Darkest";
      package = pkgs.flat-remix-gtk;
    };
    iconTheme = {
      name = "Adwaita";
      package = pkgs.adwaita-icon-theme;
    };
    font = {
      name = "Noto Sans CJK SC";
      size = 14;
    };
  };
}
