{config, ...}: {
  home.file.".wallpaper.png".source = ../../wallpapers/wallpaper1.png;

  # Configure Hyprpaper
  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = "on";
      splash = false;

      preload = ["~/.wallpaper.png"];
      wallpaper = [
        "HDMI-A-1,~/.wallpaper.png"
      ];
    };
  };
}
