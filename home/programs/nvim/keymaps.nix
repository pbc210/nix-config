{
  programs.nixvim.keymaps = [
    {
      mode = "v";
      key = "<C-c>";
      action = "\"+y";
      options = {
        silent = true;
        desc = "Copy to clipboard";
      };
    }

    {
      mode = "n";
      key = "<C-v>";
      action = "\"+p";
      options = {
        silent = true;
        desc = "Paste from clipboard";
      };
    }

    {
      mode = "i";
      key = "<C-v>";
      action = "<C-r>+";
      options = {
        silent = true;
        desc = "Paste from clipboard in insert mode";
      };
    }

    {
      mode = "v";
      key = "<C-v>";
      action = "\"+p";
      options = {
        silent = true;
        desc = "Paste and replace selection";
      };
    }

    {
      mode = "v";
      key = "<C-x>";
      action = "\"+d";
      options = {
        silent = true;
        desc = "Cut selection to clipboard";
      };
    }
  ];
}
