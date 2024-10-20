{
  security.rtkit.enable = true;

  # Configure PipeWire
  services.pipewire = {
    enable = true;
    alsa = {
      enable = true;
      support32Bit = true;
    };
    pulse = {
      enable = true;
    };
  };
}
