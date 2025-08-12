{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./kitty-home.nix
  ];

  home.username = "nixos";
  home.homeDirectory = "/home/nixos";

  home.packages = with pkgs; [
    bat
    btop
    fastfetch
    helix
    xh
    fira-code
    noto-fonts-cjk-sans
    # sbcl
    # rlwrap
    # gnupg1
    # openssl
  ];

  programs.librewolf = {
    enable = true;
  };

  programs.nushell = {
    enable = true;
    envFile.text = ''
      $env.PROMPT_COMMAND_RIGHT = ""
    '';

    configFile.text = ''
      $env.config = {
        buffer_editor: "hx"
        show_banner: false
      }
    '';
  };

  programs.helix = {
    enable = true;
    settings = {
      theme = "tokyonight";
      editor = {line-number = "relative";};
      editor.file-picker = {hidden = false;};
      editor.lsp = {display-messages = true;};
    };
  };

  programs.git = {
    enable = true;
    userName = "changsun20";
    userEmail = "110759360+changsun20@users.noreply.github.com";
  };

  home.stateVersion = "25.05";
}
