# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:
with lib.hm.gvariant;
{
  dconf.settings = {
    "org/gnome/desktop/input-sources" = {
      mru-sources = [
        (mkTuple [
          "ibus"
          "rime"
        ])
        (mkTuple [
          "xkb"
          "us"
        ])
      ];
      sources = [
        (mkTuple [
          "xkb"
          "us"
        ])
        (mkTuple [
          "ibus"
          "rime"
        ])
      ];
      xkb-options = [ ];
    };
  };
}
