{user, ...}: {
  # Configure SDDM
  services.displayManager = {
    sddm = {
      enable = true;
      wayland.enable = true;
    };
    autoLogin = {
      enable = true;
      user = "${user}";
    };
  };
}
