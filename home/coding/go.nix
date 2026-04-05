{
  config,
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    gopls
    gotools
    gotests
    gore
    gomodifytags
    golangci-lint
  ];

  programs.go = {
    enable = true;
    telemetry.mode = "off";
  };
}
