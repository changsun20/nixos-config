{
  config,
  lib,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    clojure
    leiningen
    clj-kondo
    clojure-lsp
    cljfmt
  ];
}
