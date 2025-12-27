{
  config,
  pkgs,
  ...
}: let
  firefox_config_file = ./user.js;
in {
  programs.firefox = {
    enable = true;
    profiles.default = {
      id = 0;
      name = "Default";
      isDefault = true;
      search = {
        default = "ddg";
        privateDefault = "ddg";
        force = true;
      };

      settings = {
        "browser.startup.page" = 3;
        "browser.sessionstore.resume_from_crash" = true;
        "browser.sessionstore.restore_on_demand" = false;

        "signon.rememberSignons" = false;
        "extensions.formautofill.addresses.enabled" = false;
        "extensions.formautofill.creditCards.enabled" = false;

        "browser.newtabpage.activity-stream.feeds.topsites" = false;
        "browser.newtabpage.activity-stream.showWeather" = false;
        "browser.urlbar.suggest.topsites" = false;

        "privacy.sanitize.sanitizeOnShutdown" = true;
        "privacy.clearOnShutdown_v2.browsingHistoryAndDownloads" = false;
        "privacy.clearOnShutdown_v2.cookiesAndStorage" = true;
        "privacy.clearOnShutdown_v2.cache" = true;
        "privacy.clearOnShutdown_v2.formdata" = true;

        "signon.management.page.breach-alerts.enabled" = false;

        "network.trr.mode" = 5;

        "dom.security.https_only_mode" = true;
        "dom.security.https_only_mode_ever_enabled" = true;
        "dom.security.https_only_mode_pbm" = true;

        "browser.safebrowsing.malware.enabled" = false;
        "browser.safebrowsing.phishing.enabled" = false;

        "widget.gtk.libadwaita-colors.enabled" = false;

        # "font.minimum-size.x-western" = 18;
        # "font.minimum-size.zh-CN" = 18;
        # "font.size.variable.x-western" = 18;
        # "font.size.variable.zh-CN" = 18;
      };
      extraConfig = builtins.readFile firefox_config_file;
    };
  };
}
