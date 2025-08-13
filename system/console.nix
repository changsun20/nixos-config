{pkgs, ...}: {
  console = {
    earlySetup = true;
    enable = true;
    font = "ter-124b";

    packages = with pkgs; [terminus_font];
  };
}
