{
  config,
  pkgs,
  ...
}: {
  programs.helix = {
    enable = true;
    settings = {
      theme = "tokyonight";
      editor = {line-number = "relative";};
      editor.file-picker = {hidden = false;};
      editor.lsp = {display-messages = true;};
    };
  };
}
