{
  # Configure Waybar
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";

        spacing = 8;
        margin-top = 6;
        margin-left = 8;
        margin-right = 8;

        modules-left = [];
        modules-center = [];
        modules-right = [];
      };
    };
    style = ''
      * {
        border: none;
        font-family: SauceCodePro Nerd Font;
      }

      window#waybar {
        background: transparent;
      }
    '';
  };
}
