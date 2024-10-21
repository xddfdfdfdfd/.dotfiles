{pkgs, ...}: {
  # Configure Mako
  services.mako = {
    enable = true;
    font = "SauceCodePro Nerd Font 11";
    width = 300;
    padding = "14";
    borderSize = 2;
    maxIconSize = 40;
    borderRadius = 3;
    borderColor = "#5e81ac";

    textColor = "#D8DEE9";
    backgroundColor = "#292e39";
  };

  # Additional packages
  home.packages = with pkgs; [
    libnotify
  ];
}
