let
  # Font Family
  font = "SauceCodePro Nerd Font";

  # Font Size
  size = "10.25";
in {
  # Configure Foot
  programs.foot = {
    enable = true;
    settings = {
      main = {
        term = "xterm-256color";

        font = "${font}:size=${size}:style=SemiBold";
        font-bold = "${font}:size=${size}:style=Bold";
        font-italic = "${font}:size=${size}:style=Italic";
        font-bold-italic = "${font}:size=${size}:style=Bold,Italic";
        dpi-aware = "yes";
        line-height = 19;
        underline-offset = 19;
      };
    };
  };
}
