{ inputs, ... }:
{
  programs.kitty = {
    enable = true;

    settings = {
      scrollback_lines = 10000;
      enable_audio_bell = false;
      update_check_interval = 0;

      tab_bar_edge = "bottom";
      tab_bar_style = "powerline";
      tab_powerline_style = "slanted";
      tab_title_template = "{title}{' :{}:'.format(num_windows) if num_windows > 1 else ''}";

      bold_font = "auto";
      italic_font = "auto";
      bold_italic_font = "auto";
      window_padding_width = 5;
      cursor_trail = 1;
    };

    keybindings = {
      "alt+shift+a" = "new_tab";
      "alt+shift+s" = "close_tab";

      "alt+shift+f" = "previous_tab";
      "alt+shift+d" = "next_tab";

      "alt+shift+1" = "goto_tab 1";
      "alt+shift+2" = "goto_tab 2";
      "alt+shift+3" = "goto_tab 3";
      "alt+shift+4" = "goto_tab 4";
      "alt+shift+5" = "goto_tab 5";
      "alt+shift+6" = "goto_tab 6";
      "alt+shift+7" = "goto_tab 7";
      "alt+shift+8" = "goto_tab 8";
      "alt+shift+9" = "goto_tab 9";
      "alt+shift+10" = "goto_tab 10";
    };

    extraConfig = ''
      # include ${inputs.schemes}/tools/tokyonight/kitty.night.conf
      include ${inputs.schemes}/tools/nightfox/kitty.carbonfox.conf
    '';
  };
}
