{pkgs, ...}:
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

  programs.nixvim.plugins.treesitter.grammarPackages = [ pkgs.vimPlugins.nvim-treesitter.builtGrammars.nix ];
}
