{pkgs, ...}:
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

  programs.nixvim.plugins.treesitter.grammarPackages = [ pkgs.vimPlugins.nvim-treesitter.builtGrammars.python ];
}
