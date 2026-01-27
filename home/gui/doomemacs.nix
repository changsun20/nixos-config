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
    # package = pkgs.emacs-gtk;
  };

  home.packages = with pkgs; [
    coreutils

    # Font
    nerd-fonts.symbols-only

    # :lang sh
    shellcheck
    # :lang nix
    nixd
    nixfmt

    # :term vterm
    gnumake
    cmake
    libvterm
    libtool
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
