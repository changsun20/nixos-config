{pkgs, ...}: {
  i18n = {
    defaultLocale = "en_US.UTF-8";
    extraLocales = [
      "zh_CN.UTF-8/UTF-8"
    ];
    inputMethod = {
      enable = true;
      type = "fcitx5";
      fcitx5 = {
        waylandFrontend = true;
        addons = with pkgs; [
          fcitx5-gtk
          fcitx5-rime
        ];
      };
    };
    # inputMethod = {
    #   enable = true;
    #   type = "ibus";
    #   ibus.engines = with pkgs.ibus-engines; [
    #     rime
    #   ];
    # };
  };
}
