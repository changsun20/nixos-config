{
  config,
  pkgs,
  ...
}: let
  tex = pkgs.texliveSmall.withPackages (
    ps:
      with ps; [
        algorithm2e
        ifoddpage
        relsize
      ]
  );
in {
  # home-manager
  home.packages = with pkgs; [
    tex
    texlab
  ];
}
