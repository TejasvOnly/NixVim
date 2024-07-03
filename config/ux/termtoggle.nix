{pkgs, ...}: {
  extraPlugins = [
    {
      plugin = pkgs.vimPlugins.toggleterm-nvim;
      config = "lua require'toggleterm'.setup()";
    }
    pkgs.vimPlugins.toggleterm-nvim
  ];
  keymaps = [
    {
      mode = "t";
      key = "<Esc>";
      action = "<C-\\><C-n>";
    }
    {
      mode = "t";
      key = "<C-h>";
      action = "<Cmd>wincmd h<CR>";
    }
    {
      mode = "t";
      key = "<C-j>";
      action = "<Cmd>wincmd j<CR>";
    }
    {
      mode = "t";
      key = "<C-k>";
      action = "<Cmd>wincmd k<CR>";
    }
    {
      mode = "t";
      key = "<C-l>";
      action = "<Cmd>wincmd l<CR>";
    }
    {
      mode = "n";
      key = "<leader>;";
      action = "<Cmd>ToggleTerm<Cr>";
    }
  ];
}
