{
  config,
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    # Multimedia
    kdePackages.elisa
    kdePackages.gwenview
    haruna

    # Productivity
    qalculate-qt
    obsidian
    zotero
    libreoffice
    bitwarden-desktop
    mullvad-browser
    rssguard

    # Social
    wechat-uos
    signal-desktop
    zoom-us

    ungoogled-chromium
  ];
}
