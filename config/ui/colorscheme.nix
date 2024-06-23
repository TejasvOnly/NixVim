{pkgs, ...}: let
  github-theme = pkgs.vimUtils.buildVimPlugin {
    name = "github-nvim-theme";
    src = pkgs.fetchFromGitHub {
      owner = "projekt0n";
      repo = "github-nvim-theme";
      rev = "66dcec1bd3d12f8b0bf3c885069888551a650049";
      hash = "sha256-d23Jo2BI99HsNZnYuiCYy7q1iZ3PsG3KxG9OBp0E1aY=";
    };
  };
in {
  extraPlugins = [
    github-theme
    {
      plugin = pkgs.vimPlugins.toggleterm-nvim;
      config = "lua require'toggleterm'.setup()";
    }
  ];
  #colorscheme = "github_dark";
  colorschemes.nightfox = {
    enable = true;
    flavor = "nordfox";
  };
}
