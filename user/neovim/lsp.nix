{
  # Configure LSP
  programs.nixvim.plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = {
      gopls = {
        enable = true;
      };
      pyright = {
        enable = true;
      };
      rust_analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };
      nixd = {
        enable = true;
      };
    };
  };
}
