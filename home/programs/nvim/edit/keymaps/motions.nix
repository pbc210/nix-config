{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>q";
      action = "<cmd>keepjumps normal! gg<CR>";
      options.desc = "Top of file";
    }

    {
      mode = "n";
      key = "<leader>w";
      action = "<cmd>normal! M<CR>";
      options.desc = "Middle of screen";
    }

    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>keepjumps normal! G<CR>";
      options.desc = "Bottom of file";
    }


    {
      mode = "n";
      key = "<leader>a";
      action = "<cmd>normal! ^<CR>";
      options.desc = "Start of line";
    }

    {
      mode = "n";
      key = "<leader>s";
      action = "<cmd>normal! zz<CR>";
      options.desc = "Center line on screen";
    }

    {
      mode = "n";
      key = "<leader>d";
      action = "<cmd>normal! $<CR>";
      options.desc = "End of line";
    }
  ];
}
