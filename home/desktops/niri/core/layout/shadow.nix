{ config, ... }:
{
  programs.niri.settings.layout.shadow = {
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
}

