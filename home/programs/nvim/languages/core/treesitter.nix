{
  programs.nixvim.plugins.treesitter = {
    enable = true;
    settings = {

      highlight = {
        enable = true;
        additional_vim_regex_highlighting = false;
      };
      indent.enable = true;

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
