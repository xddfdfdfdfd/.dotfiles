{pkgs, ...}: {
  # Configure GTK
  gtk = {
    enable = true;
    font = {
      name = "Inter";
      package = pkgs.inter;
    };
    theme = {
      name = "Nordic-bluish-accent";
      package = pkgs.nordic;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-nord.override {accent = "frostblue3";};
    };
    cursorTheme = {
      name = "Bibata-Modern-Classic";
      size = 15;
      package = pkgs.bibata-cursors;
    };
  };
}
