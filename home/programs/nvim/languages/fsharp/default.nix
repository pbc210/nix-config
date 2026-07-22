{ pkgs, ... }:
{
  programs.nixvim.plugins.lsp.servers.fsautocomple = {
    enable = true;
  };

  programs.nixvim.plugins.conform-nvim.settings.formatters_by_ft = { fs = [ "fsharp" ]; };

  programs.nixvim.plugins.treesitter.grammarPackages = [ pkgs.vimPlugins.nvim-treesitter.builtGrammars.fsharp ];
}
