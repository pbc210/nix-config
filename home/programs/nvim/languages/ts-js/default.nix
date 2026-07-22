{pkgs, ...}:
{
  programs.nixvim.plugins.lsp.servers.ts_ls = {
    enable = true;
    settings = {
      typescript.inlayHints = {
        includeInlayEnumMemberValueHints = true;
        includeInlayFunctionLikeReturnTypeHints = true;
        includeInlayFunctionParameterTypeHints = true;
        includeInlayParameterNameHints = "all"; # "none" | "literals" | "all"
        includeInlayPropertyDeclarationTypeHints = true;
        includeInlayVariableTypeHints = true;
      };

      javascript.inlayHints = {
        includeInlayEnumMemberValueHints = true;
        includeInlayFunctionLikeReturnTypeHints = true;
        includeInlayParameterNameHints = "all";
        includeInlayVariableTypeHints = true;
      };
    };
  };
  programs.nixvim.plugins.treesitter.grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
    typescript
    javascript
  ];
}
