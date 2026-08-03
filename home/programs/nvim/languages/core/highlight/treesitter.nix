{
  programs.nixvim.plugins.treesitter = {
    enable = true;
    nixGrammars = true;
    settings = {

      highlight = {
        enable = true;
        additional_vim_regex_highlighting = false;
      };
      indent.enable = true;
      auto_install = false;

      incremental_selection = {
        enable = true;
        keymaps = {
          init_selection = ",";
          node_incremental = ",";
          node_decremental = "<BS>";
          scope_incremental = "<gCR>";
        };
      };
    };
  };
}
