{
  programs.nixvim.plugins = {
    lsp = {
      enable = true;

      keymaps = {
        lspBuf = {
          "gd" = "definition";
          "gD" = "declaration";
          "gi" = "implementation";
          "gt" = "type_definition";
          "K"  = "hover";
          "<F2>" = "rename";
          "<F4>" = "code_action";
        };

        diagnostic = {
          "[d" = "goto_prev";
          "]d" = "goto_next";
        };
      };
    };
    treesitter = {
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
  };

  imports = [
    ./nvim
    ./nix
  ];
}
