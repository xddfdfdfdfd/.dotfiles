{pkgs, ...}: {
  # Configure Treesitter
  programs.nixvim.plugins.treesitter = {
    enable = true;
    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      bash
      go
      json
      make
      markdown
      nix
      python
      rust
      toml
    ];
    settings = {
      highlighting = {
        enable = true;
      };
    };
  };
}
