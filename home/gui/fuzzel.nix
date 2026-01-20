{pkgs, ...}: {
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        font = "Noto Sans CJK SC:size=18";
        terminal = "foot";
      };
      colors = {
        background = "1e1e2edd";
        text = "cdd6f4ff";
        prompt = "bac2deff";
        placeholder = "7f849cff";
        input = "cdd6f4ff";
        match = "89dcebff";
        selection = "585b70ff";
        selection-text = "cdd6f4ff";
        selection-match = "89dcebff";
        counter = "7f849cff";
        border = "7fc8ffff";
      };
      border = {
        width = 4;
      };
    };
  };
}
