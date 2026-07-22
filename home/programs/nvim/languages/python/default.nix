{ pkgs, ... }:
{
  programs.nixvim.plugins.lsp.servers.pyright = {
    enable = true;

    settings = {
      typeCheckingMode = "basic";

      autoSearchPaths = true;
      useLibraryCodeForTypes = true;

      diagnosticMode = "workspace";
    };
  };

  programs.nixvim.plugins.conform-nvim.settings.formatters_by_ft = { py = [ "ruff_format" ]; };

  programs.nixvim.plugins.treesitter.grammarPackages = [ pkgs.vimPlugins.nvim-treesitter.builtGrammars.python ];
}
