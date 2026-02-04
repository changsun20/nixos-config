{ pkgs, ... }:
{
  services.evremap = {
    enable = true;
    settings = {
      device_name = "AT Translated Set 2 keyboard";
      remap = [
        {
          input = [
            "KEY_LEFTMETA"
            "KEY_LEFTSHIFT"
            "KEY_F23"
          ];
          output = [
            "KEY_RIGHTCTRL"
          ];
        }
      ];
    };
  };
}
