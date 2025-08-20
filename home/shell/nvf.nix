{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.nvf.homeManagerModules.default
  ];

  programs.nvf = {
    enable = true;

    settings.vim = {
      theme = {
        enable = true;
        name = "tokyonight";
        style = "night";
      };

      statusline.lualine.enable = true;
      telescope.enable = true;
      autocomplete.nvim-cmp.enable = true;

      languages = {
        enableTreesitter = true;

        nix.enable = true;
      };
    };
  };
}
