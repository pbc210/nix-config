{ pkgs, ... }:
{
  programs.nixvim.plugins.lsp.servers.nixd = {
    enable = true;
    settings = {
      formatting.command = [ "nixpkgs-fmt" ];
      options = {
        nixpkgs.expr = "import <nixpkgs> { }";
      };
    };
  };

  programs.nixvim.plugins.conform-nvim.settings.formatters_by_ft = { nix = [ "alejandra" ]; };

  programs.nixvim.plugins.treesitter.grammarPackages = [ pkgs.vimPlugins.nvim-treesitter.builtGrammars.nix ];
}
