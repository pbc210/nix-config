{
  programs.nixvim.plugins.telescope = {
    enable = true;
    settings = {
      defaults = {
        layout_strategy = "horizontal";
        sorting_strategy = "descending";

        hide_on_startup = true;

        layout_config = {
          prompt_position = "bottom";
          width = 0.9;
          height = 0.9;
          preview_width = 0.6;
        };
      };
    };
  };
}
