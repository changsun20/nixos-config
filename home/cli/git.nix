{
  config,
  pkgs,
  ...
}:
{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "changsun20";
        email = "110759360+changsun20@users.noreply.github.com";
      };
      gpg.format = "ssh";
      commit.gpgsign = true;
      tag.gpgsign = true;
      user.signingkey = "~/.ssh/id_sign_ed25519.pub";
      init.defaultbranch = "main";
    };
  };
}
