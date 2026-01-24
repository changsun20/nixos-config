{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    signal-desktop
    libreoffice
    zoom-us
  ];
}
