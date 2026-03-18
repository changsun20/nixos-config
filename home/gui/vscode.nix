{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    profiles.default = {
      extensions = with pkgs.vscode-extensions; [
        ms-ceintl.vscode-language-pack-zh-hans
        rust-lang.rust-analyzer
        tamasfe.even-better-toml
        fill-labs.dependi
        ziglang.vscode-zig
        vscodevim.vim
        nomicfoundation.hardhat-solidity
      ];
      userSettings = {
        "files.autoSave" = "onFocusChange";
        "editor.fontSize" = 16;
        "window.zoomLevel" = 1;
      };
    };
  };
}
