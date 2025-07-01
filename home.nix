{ config, pkgs, ... }:

{
  home.username = "nixos";
  home.homeDirectory = "/home/nixos";

  home.packages = with pkgs;[
    btop
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

  home.stateVersion = "25.05";
}
