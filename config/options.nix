{
  config = {
    clipboard = {
      register = "unnamedplus";
    };
    editorconfig.enable = true;
    opts = {
      number = true;
      relativenumber = true;

      shiftwidth = 4;
      tabstop = 4;
      softtabstop = 4;
      expandtab = true;

      smartindent = true;

      wrap = false;

      swapfile = false;
      backup = false;
      undofile = true;
      #undodir = ;

      hlsearch = true;
      incsearch = true;

      termguicolors = true;

      scrolloff = 8;
      signcolumn = "yes";

      updatetime = 50;

      showmode = false;
      cmdheight = 1;
      conceallevel = 0;
      encoding = "utf-8";
      fileencoding = "utf-8";
      title = true;
      inccommand = "nosplit";
      mouse = "a";
      ignorecase = true;
      smartcase = true;
      splitbelow = true;
      splitright = true;
      splitkeep = "cursor";
      writebackup = false;
      cursorline = true;
      laststatus = 3;
      listchars = {
        tab = "󰌒 ";
        trail = "•";
        nbsp = "␣";
      };
      list = true;
      showbreak = "↪ ";
      foldmethod = "expr";
      foldnestmax = 20;
      foldminlines = 2;
      foldlevel = 99;
      foldlevelstart = 99;
      foldenable = true;
      foldexpr = "nvim_treesitter#foldexpr()";
    };
  };
}
