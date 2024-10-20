{
  # Configure Nord colorscheme
  programs.nixvim.colorschemes.nord = {
    enable = true;
    settings = {
      bold = false;
      italic = false;
      borders = false;
      contrast = true;
      disable_background = false;
      uniform_diff_background = true;
    };
  };
}
