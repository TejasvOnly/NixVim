{pkgs, ...}: {
  plugins = {
    treesitter.enable = true;
    ts-autotag.enable = true;
    ts-context-commentstring = {
      enable = true;
      skipTsContextCommentStringModule = true;
    };
    treesitter-context.enable = true;
    treesitter-textobjects = {
      enable = pkgs.lib.mkDefault true;
      select = {
        enable = pkgs.lib.mkDefault true;
        lookahead = pkgs.lib.mkDefault true;
        keymaps = {
          "af" = {query = "@function.outer";};
          "if" = {query = "@function.inner";};
          "ac" = {query = "@class.outer";};
          "ic" = {query = "@class.inner";};
          "ai" = {query = "@conditional.outer";};
          "ii" = {query = "@conditional.inner";};
          "al" = {query = "@loop.outer";};
          "il" = {query = "@loop.inner";};
        };
      };
      swap = {
        enable = pkgs.lib.mkDefault true;
        swapNext = {
          "<leader>pn" = {
            query = "@parameter.inner";
            desc = "Parameter swap next";
          };
        };
        swapPrevious = {
          "<leader>pp" = {
            query = "@parameter.inner";
            desc = "Parameter swap prev";
          };
        };
      };
      move = {
        enable = pkgs.lib.mkDefault true;
        setJumps = pkgs.lib.mkDefault true;
        gotoNextStart = {
          "]f" = {query = "@function.outer";};
          "]c" = {query = "@conditional.outer";};
          "]l" = {query = "@loop.outer";};
          "]o" = {query = "@class.outer";};
        };
        gotoNextEnd = {
          "]F" = {query = "@function.outer";};
          "]C" = {query = "@conditional.outer";};
          "]L" = {query = "@loop.outer";};
          "]O" = {query = "@class.outer";};
        };
        gotoPreviousStart = {
          "[f" = {query = "@function.outer";};
          "[c" = {query = "@conditional.outer";};
          "[l" = {query = "@loop.outer";};
          "[o" = {query = "@class.outer";};
        };
        gotoPreviousEnd = {
          "[F" = {query = "@function.outer";};
          "[C" = {query = "@conditional.outer";};
          "[L" = {query = "@loop.outer";};
          "[O" = {query = "@class.outer";};
        };
      };
    };
  };
}
