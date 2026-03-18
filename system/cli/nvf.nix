{
  config,
  lib,
  pkgs,
  ...
}:
{
  programs.nvf = {
    enable = true;

    # Your settings need to go into the settings attribute set
    # most settings are documented in the appendix
    settings.vim = {
      viAlias = false;
      vimAlias = false;

      lsp = {
        enable = true;
        formatOnSave = true;
      };

      treesitter = {
        enable = true;
        indent.enable = true;
        highlight.enable = true;
      };

      theme = {
        enable = true;
        name = "tokyonight";
        style = "night";
      };

      autopairs.nvim-autopairs.enable = true;

      autocomplete.blink-cmp.enable = true;

      terminal = {
        toggleterm = {
          enable = true;
          lazygit.enable = true;
        };
      };

      binds.whichKey = {
        enable = true;
      };

      statusline.lualine = {
        enable = true;
      };

      clipboard = {
        enable = true;
        providers.wl-copy.enable = true;
      };

      languages = {
        rust = {
          enable = true;
          lsp.enable = true;
          format.enable = true;
        };

        clang = {
          enable = true;
          lsp.enable = true;
        };

        nix = {
          enable = true;
          format = {
            enable = true;
            type = [ "nixfmt" ];
          };
          lsp = {
            enable = true;
            servers = [ "nixd" ];
          };
        };
      };
    };
  };
}
