{pkgs, ...}:
{
  programs.nixvim.plugins.lsp.servers.lua_ls = {
    enable = true;
    extraOptions = {
      settings = {
        Lua = {
          diagnostic.globals = [ "vim" ];
        };

        workspace = {
          libary = [
            "\${3rd}/luv/library"
          ];
          checkThirdParty = false;
        };
      };
    };
  };
  programs.nixvim.plugins.treesitter.grammarPackages = [ pkgs.vimPlugins.nvim-treesitter.builtGrammars.lua ];
}
