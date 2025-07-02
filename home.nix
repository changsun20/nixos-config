{
  config,
  pkgs,
  ...
}: {
  home.username = "nixos";
  home.homeDirectory = "/home/nixos";

  home.packages = with pkgs; [
    bat
    btop
    fastfetch
  ];

  programs.nushell = {
    enable = true;
    envFile.text = ''
      $env.PROMPT_COMMAND_RIGHT = ""
    '';

    configFile.text = ''
      $env.config = {
        buffer_editor: "vim"
        show_banner: false
      }
    '';
  };

  programs.git = {
    enable = true;
    userName = "changsun20";
    userEmail = "110759360+changsun20@users.noreply.github.com";
  };

  home.stateVersion = "25.05";
}
