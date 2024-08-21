{pkgs, ...}: {
  imports = [
    ./treesitter.nix
    ./lsp.nix
    ./termtoggle.nix
    ./undotree.nix
    ./gitsigns.nix
  ];

  config = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

    extraPlugins = [
      {
        plugin = pkgs.vimPlugins.text-case-nvim;
        config = "lua require'textcase'.setup()";
      }
      pkgs.vimPlugins.text-case-nvim
    ];
    plugins = {
      luasnip = {
        enable = true;
        extraConfig = {
          enable_autosnippets = true;
        };
      };

      nvim-colorizer.enable = true;
      lazygit.enable = true;
      nvim-autopairs = {
        enable = true;
        settings.checkTs = true;
      };

      cmp = {
        enable = true;
        autoEnableSources = true;
        settings = {
          snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";

          sources = [
            {name = "nvim_lsp";}
            {name = "luasnip";}
            {name = "path";}
            {name = "buffer";}
            {name = "git";}
            {name = "calc";}
            {name = "nvim_lsp_signature_help";}
          ];

          mapping = {
            "<C-k>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
            "<C-j>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
            "<Up>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
            "<Down>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
            "<C-Space>" = "cmp.mapping.complete()";
            "<C-f>" = "cmp.mapping.scroll_docs(4)";
            "<C-b>" = "cmp.mapping.scroll_docs(-4)";
            "<CR>" = "cmp.mapping.confirm({ select = true })";
          };
        };
      };
    };

    keymaps = [
      {
        mode = "n";
        key = "<leader>r";
        action = "<cmd>TextCaseStartReplacingCommand<cr>";
      }
      {
        mode = "n";
        key = "ga.";
        action = "<cmd>TextCaseOpenTelescope<cr>";
      }
      {
        mode = "v";
        key = "ga.";
        action = "<cmd>TextCaseOpenTelescope<cr>";
      }
      {
        mode = "";
        key = "<Space>";
        action = "<Nop>";
        options = {
          noremap = true;
          silent = true;
        };
      }
      {
        mode = "n";
        key = "<C-s>";
        action = "<Cmd>w<CR>";
        options = {
          noremap = true;
          silent = true;
        };
      }
      {
        mode = "i";
        key = "<C-s>";
        action = "<Esc><Cmd>w<CR>a";
        options = {
          noremap = true;
          silent = true;
        };
      }
      {
        mode = "v";
        key = "<C-s>";
        action = "<Esc><Cmd>w!<CR>";
        options = {
          noremap = true;
          silent = true;
        };
      }
      {
        mode = "v";
        key = "J";
        action = ":m '>+1<CR>gv=gv";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        mode = "v";
        key = "K";
        action = ":m '<-2<CR>gv=gv";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        mode = "n";
        key = "J";
        action = "mzJ`z";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        mode = "n";
        key = "<C-u>";
        action = "<C-u>zz";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        mode = "n";
        key = "<C-d>";
        action = "<C-d>zz";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        mode = "n";
        key = "n";
        action = "nzzzv";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        mode = "n";
        key = "N";
        action = "Nzzzv";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        mode = "n";
        key = "<leader>d";
        action = "\"_d";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        mode = "v";
        key = "<leader>d";
        action = "\"_d";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        mode = "x";
        key = "<leader>p";
        action = "\"_dP";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        mode = "n";
        key = "Q";
        action = "<Nop>";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        action = ":vsplit<CR>";
        key = "|";
        mode = "n";
      }

      {
        action = ":split<CR>";
        key = "-";
        mode = "n";
      }

      # Window navigation
      {
        action = "<C-w>h";
        key = "<C-h>";
        mode = "n";
        options = {
          noremap = true;
          silent = true;
          desc = "Move to the window on the left";
        };
      }
      {
        action = "<C-w>j";
        key = "<C-j>";
        mode = "n";
        options = {
          noremap = true;
          silent = true;
          desc = "Move to the window below";
        };
      }
      {
        action = "<C-w>k";
        key = "<C-k>";
        mode = "n";
        options = {
          noremap = true;
          silent = true;
          desc = "Move to the window above";
        };
      }
      {
        action = "<C-w>l";
        key = "<C-l>";
        mode = "n";
        options = {
          noremap = true;
          silent = true;
          desc = "Move to the window on the right";
        };
      }

      # Resize window with Ctrl + arrow keys
      {
        action = "<cmd>resize +4<CR>";
        key = "<C-Up>";
        mode = "n";
        options = {
          noremap = true;
          silent = true;
          desc = "Increase window height";
        };
      }
      {
        action = "<cmd>resize -4<CR>";
        key = "<C-Down>";
        mode = "n";
        options = {
          noremap = true;
          silent = true;
          desc = "Decrease window height";
        };
      }
      {
        action = "<cmd>vertical resize +4<CR>";
        key = "<C-Left>";
        mode = "n";
        options = {
          noremap = true;
          silent = true;
          desc = "Increase window width";
        };
      }
      {
        action = "<cmd>vertical resize -4<CR>";
        key = "<C-Right>";
        mode = "n";
        options = {
          noremap = true;
          silent = true;
          desc = "Decrease window width";
        };
      }

      # Turn off search highlight
      {
        action = "<cmd>nohl<CR>";
        key = "<C-n>";
        mode = "n";
        options = {
          noremap = true;
          silent = true;
          desc = "Clear search highlight";
        };
      }

      # Stay in visual mode while indenting
      {
        action = "<gv";
        key = "<";
        mode = "v";
        options = {
          noremap = true;
          silent = true;
          desc = "Indent left";
        };
      }
      {
        action = ">gv";
        key = ">";
        mode = "v";
        options = {
          noremap = true;
          silent = true;
          desc = "Indent right";
        };
      }
      {
        mode = "n";
        key = "<leader>g";
        action = "<cmd>LazyGit<cr>";
        options = {
          noremap = true;
          desc = "Open LazyGit screen";
        };
      }
    ];
  };
}
