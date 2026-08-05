{ config, ... }:
{
  programs.niri.settings.layout.insert-hint = {
    enable = true;
    display.gradient = {
      from = "#${config.lib.stylix.colors.base0D}";
      to = "#${config.lib.stylix.colors.base0E}";
      angle = 45;
      relative-to = "window";
    };
  };
}
