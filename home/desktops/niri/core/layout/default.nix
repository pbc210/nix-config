{ config, ... }:
{
  programs.niri.settings.layout = {
    focus-ring.enable = false;
    border = {
      enable = true;

      width = 4;


    };

    insert-hint = {
      enable = true;
      display.gradient = {
        from = "#${config.lib.stylix.colors.base0D}";
        to = "#${config.lib.stylix.colors.base0E}";
        angle = 45;
        relative-to = "window";
      };
    };

    shadow = {
      enable = true;
      softness = 40;
      spread = 10;
      offset = {
        x = 0;
        y = 8;
      };
      color = "#${config.lib.stylix.colors.base00}99";
      inactive-color = "#00000055";
      draw-behind-window = true;
    };

  };
}
