{pkgs, ...}: {
  # Configure GTK
  gtk = {
    enable = true;
    theme = {
      name = "Nordic-bluish-accent";
      package = pkgs.nordic;
    };
  };
}
