{...}: {
  imports = [
    ./bufferline.nix
    ./colorscheme.nix
    ./telescope.nix
    ./nvim-tree.nix
  ];
  plugins = {
    lualine.enable = true;
  };
}
