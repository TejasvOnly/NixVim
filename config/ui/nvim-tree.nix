_: {
  plugins = {
    nvim-tree.enable = true;
    nvim-tree.updateFocusedFile.enable = true;
  };
  keymaps = [
    {
      action = "<cmd>NvimTreeFindFileToggle<CR>";
      key = "<leader>e";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Explorer";
      };
    }
  ];
}
