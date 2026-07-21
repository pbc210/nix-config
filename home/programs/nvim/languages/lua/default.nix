{pkgs, inputs, ...}:
{
  programs.nixvim.plugins.lsp.servers.lua_ls = {
    enable = true;
    extraOptions = {
      settings = {
        Lua = {
          diagnostic.globals = [ "vim" ];
        };

        workspace = {
          library = [
            "\${3rd}/luv/library"
            "${inputs.wezterm-types}"
          ];
          checkThirdParty = false;
        };
      };
    };
  };
  programs.nixvim.plugins.treesitter.grammarPackages = [ pkgs.vimPlugins.nvim-treesitter.builtGrammars.lua ];
}

