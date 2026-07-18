{pkgs, settings, ...}:
{
  programs.nixvim = {
    extraPackages = with pkgs; [ lazygit ];

    extraPlugins = with pkgs.vimPlugins; [ lazygit-nvim ];

    globals = {
      lazygit_floating_window_scaling_factor = 0.85;
      lazygit_floating_window_winblend = 0;
      lazygit_floating_window_border_chars = settings.glyphs.border;
    };

    keymaps = [
      {
        mode = "n";
        key = "<leader>gg";
        action = "<cmd>LazyGit<CR>";
        options = {
          desc = "LazyGit";
          silent = true;
        };
      }
    ];
  };
}
