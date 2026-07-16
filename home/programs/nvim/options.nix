{
  programs.nixvim.opts = {
    number = true;
    relativenumber = true;
    signcolumn = "yes";
    cursorline = true;

    shiftwidth = 2;
    tabstop = 2;
    expandtab = true;
    smartindent = true;

    ignorecase = true;
    smartcase = true;

    clipboard = "unnamedplus";
    undofile = true;
  };
}
