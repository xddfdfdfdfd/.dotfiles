{
  imports = [
    ./autopairs.nix
    ./cmp.nix
    ./conform.nix
    ./lsp.nix
    ./nord.nix
    ./oil.nix
    ./telescope.nix
    ./treesitter.nix
    ./web-devicons.nix
  ];

  # Configure Neovim
  programs.nixvim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    defaultEditor = true;
    globals = {
      mapleader = " ";
    };
  };
}
