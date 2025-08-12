{pkgs, ...}: {
  programs.nushell = {
    enable = true;
    envFile.text = ''
      $env.PROMPT_COMMAND_RIGHT = ""
    '';

    settings = {
      show_banner = false;
      completions.external = {
        enable = true;
        max_results = 20;
      };
    };
  };
}
