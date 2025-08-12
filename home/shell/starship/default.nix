{pkgs, ...}: {
  programs.starship = {
    enable = true;
    enableNushellIntegration = true;
    settings = {
      add_newline = false;
      character = {
        success_symbol = "[->](bold green)";
        error_symbol = "[->](bold red)";
      };
    };
  };
}
