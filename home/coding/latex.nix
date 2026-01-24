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
        secdot
        pinlabel
        tikz-cd
        # nicefrac
      ]
  );
in {
  # home-manager
  home.packages = with pkgs; [
    tex
    texlab
  ];
}
