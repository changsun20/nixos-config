# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:
with lib.hm.gvariant;
{
  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      font-name = "Noto Sans CJK SC 15";
      document-font-name = "Noto Sans CJK SC 15";
      gtk-theme = "Flat-Remix-GTK-Grey-Darkest";
      icon-theme = "Adwaita";

      # scaling-factor = 2;
      # text-scaling-factor = 1.0;
    };
  };
}
