{
  plugins.bufferline = {
    enable = true;
    offsets = [
      {
        filetype = "NvimTree";
        text = "Explorer";
        highlight = "PanelHeading";
        padding = 1;
      }
      {
        filetype = "undotree";
        text = "Undo Tree";
        highlight = "PanelHeading";
        padding = 1;
      }
    ];
  };
  keymaps = [
    {
      mode = "n";
      key = "<Tab>";
      action = "<Cmd>BufferLineCycleNext<CR>";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<S-Tab>";
      action = "<Cmd>BufferLineCyclePrev<CR>";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>1";
      action = "<Cmd>lua require'bufferline'.go_to_buffer(1,true)<CR>";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>2";
      action = "<Cmd>lua require'bufferline'.go_to_buffer(2,true)<CR>";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>3";
      action = "<Cmd>lua require'bufferline'.go_to_buffer(3,true)<CR>";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>4";
      action = "<Cmd>lua require'bufferline'.go_to_buffer(4,true)<CR>";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>0";
      action = "<Cmd>lua require'bufferline'.go_to_buffer(-1,true)<CR>";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>a";
      action = "<Cmd>BufferLineTogglePin<CR>";
      options = {
        noremap = true;
        silent = true;
      };
    }
  ];
}
