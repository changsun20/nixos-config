{
  inputs,
  pkgs,
  ...
}:
{
  programs.emacs = {
    enable = true;
  };

  home.packages = with pkgs; [
    coreutils

    # Font
    nerd-fonts.symbols-only

    # :lang sh
    shellcheck
    shfmt
    # :lang nix
    nixd
    nixfmt
    nixfmt-tree
    # :lang latex
    ghostscript
    # :lang markdown
    pandoc
    # :lang python
    pyright
    # :lang java
    jdt-language-server
    # :lang solidity
    solc
    prettier
    # :lang typescript
    typescript-language-server

    # :term vterm
    libvterm
    libtool

    # :checkers spell
    ispell
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
