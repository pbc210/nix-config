{ pkgs, ... }:
{
  programs.nixvim.plugins.lsp.servers.marksman = {
    enable = true;
  };

  programs.nixvim.plugins.conform-nvim.settings.formatters_by_ft = { md = [ "prettier" ]; };

  programs.nixvim.plugins.treesitter.grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
    markdown
    markdown_inline
  ];
}
