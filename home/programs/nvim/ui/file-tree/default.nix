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

      window = {
        position = "float";
        popupBorderStyle = "rounded";

        popup = {

          position = {
            row = "50%";
            col = "50%";
          };

          size = {
            width = "90%";
            height = "90%";
          };
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

      eventHandlers = {
        file_opened = ''
          function()
            require("neo-tree.sources.manager").close_all()
          end
        '';
      };
    };
  };
}
