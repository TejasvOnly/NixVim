{
  plugins = {
    inc-rename.enable = true;

    lsp = {
      enable = true;
      servers = {
        dockerls.enable = true;
        gopls.enable = true;
        jsonls.enable = true;
        marksman.enable = true;
        nil-ls.enable = true;
        pyright.enable = true;
        tsserver.enable = true;
        lua-ls.enable = true;
        rust-analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
        };
        tailwindcss.enable = true;
        typst-lsp.enable = true;
        cssls.enable = true;
        html.enable = true;
        htmx.enable = true;
        solargraph.enable = true;
        yamlls.enable = true;
        taplo.enable = true;
        clangd = {
          enable = true;
          cmd = [
            "clangd"
            "--offset-encoding=utf-16"
          ];
        };
      };
      inlayHints = true;
    };
    lsp-format.enable = true;

    lspsaga = {
      enable = true;
      ui.border = "rounded";
      ui.codeAction = "";
      beacon.enable = true;
      implement = {
        enable = true;
        sign = false;
      };
      lightbulb = {
        enable = true;
        sign = true;
        virtualText = false;
      };
      outline = {layout = "float";};
      symbolInWinbar.enable = true;
    };

    none-ls = {
      enable = true;
      sources = {
        code_actions = {
          statix.enable = true;
        };

        diagnostics = {
          stylelint.enable = true;
          statix.enable = true;
          sqlfluff.enable = true;
          rubocop.enable = true;
          pylint.enable = true;
          mypy.enable = true;
          markdownlint.enable = true;
          hadolint.enable = true;
          fish.enable = true;
          dotenv_linter.enable = true;
          djlint.enable = true;
          deadnix.enable = true;
          trail_space.enable = true;
        };

        formatting = {
          stylua.enable = true;
          alejandra.enable = true;
          shfmt.enable = true;
          gofmt.enable = true;
          black.enable = true;
          isort.enable = true;
          prettier.enable = true;
          prettier.disableTsServerFormatter = true;
          typstfmt.enable = true;
        };
      };
    };
  };
  keymaps = [
    {
      action = "<cmd>ToggleDefinition<cr>";
      key = "gd";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Go To Definition / Finder";
      };
    }
    {
      action = "<cmd>Lspsaga goto_type_definition<cr>";
      key = "gt";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Go To Type Definition";
      };
    }
    {
      action = "<cmd>Lspsaga peek_definition<cr>";
      key = "gp";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Definition";
      };
    }
    {
      action = "<cmd>Lspsaga code_action<cr>";
      key = "<leader>.";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Code Action";
      };
    }
    {
      action = "<cmd>Telescope diagnostics theme=dropdown<cr>";
      key = "<leader>d";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Diagnostics";
      };
    }
    {
      action = "<cmd>Lspsaga diagnostic_jump_next<CR>";
      key = "]d";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Next Diagnostic";
      };
    }
    {
      action = "<cmd>Lspsaga diagnostic_jump_prev<cr>";
      key = "[d";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Previous Diagnostic";
      };
    }
    {
      action = "<cmd>lua vim.lsp.codelens.run()<cr>";
      key = "<leader>l";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "CodeLens";
      };
    }
    {
      action = ":IncRename ";
      key = "<leader><F2>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Incremental Rename (file)";
      };
    }
    {
      action = "<cmd>Lspsaga rename<cr>";
      key = "<F2>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Project-wide Rename";
      };
    }
  ];
}
