{
  programs.nixvim.plugins.neo-tree = {
    enable = true;

    settings = {
      close_if_last_window = true;

      filesystem = {
        filtered_items = {
          visible = true;
          hide_dotfiles = false;
          hide_gitignored = false;
        };

        follow_current_file = {
          enabled = true;
          leave_dirs_open = false;
        };
      };
      default_component_configs = {
        git_status = {
          symbols = {
            added = " ";
            conflict = " ";
            deleted = " ";
            ignored = " ";
            modified = " ";
            renamed = " ";
            untracked = "󰰧 ";
          };
        };
      };
    };
  };
}
