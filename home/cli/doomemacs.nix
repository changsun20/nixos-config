{
  inputs,
  pkgs,
  ...
}: {
  # programs.doom-emacs = {
  #   enable = true;
  #   doomDir = ../../doom.d;
  # };

  programs.emacs = {
    enable = true;
  };

  home.packages = with pkgs; [
    coreutils
    nerd-fonts.symbols-only
    shellcheck # :lang sh
    nixd # :lang nix
    nixfmt
  ];

  home.sessionPath = [
    "$HOME/.emacs.d/bin"
  ];

  programs.fish.interactiveShellInit = ''
    if test -d $HOME/.emacs.d/bin
      set -gx PATH $HOME/.emacs.d/bin $PATH
    end
  '';

  home.file.".doom.d" = {
    source = ../../doom.d;
    recursive = true;
    force = true;
  };
}
