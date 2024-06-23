{
  plugins.undotree.enable = true;
  keymaps = [
    {
      mode = "n";
      key = "<leader>u";
      action = "<cmd>UndotreeToggle<cr>";
      options = {
        noremap = true;
        silent = true;
      };
    }
  ];
}
