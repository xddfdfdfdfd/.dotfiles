{
  # Configure Neogit
  programs.nixvim.plugins.neogit = {
    enable = true;
  };

  # Keymaps
  programs.nixvim.keymaps = [
    {
      key = "<Up>";
      action = "<CMD>Neogit<CR>";
      options = {
        desc = "Open neogit";
      };
    }
  ];
}
