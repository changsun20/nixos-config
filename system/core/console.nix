{pkgs, ...}: {
  console = {
    earlySetup = true;
    enable = true;
    font = "ter-132b";
    packages = with pkgs; [terminus_font];
  };
}
