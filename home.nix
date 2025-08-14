{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./home
  ];

  home.username = "nixos";
  home.homeDirectory = "/home/nixos";

  home.packages = with pkgs; [
    # CLI programs and utilities
    bat
    btop
    fastfetch
    xh
    libnotify

    # Fonts
    fira-code
    nerd-fonts.jetbrains-mono
    noto-fonts
    noto-fonts-cjk-sans

    # sbcl
    # rlwrap
    # gnupg1
    # openssl
  ];

  programs.librewolf = {
    enable = true;
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
    extraConfig = {
      gpg.format = "ssh";
      commit.gpgsign = true;
      tag.gpgsign = true;
      user.signingkey = "~/.ssh/id_sign_ed25519.pub";
      init.defaultbranch = "main";
    };
  };

  home.stateVersion = "25.05";
}
