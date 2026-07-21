{ pkgs, config, ... }:
{
  home.packages = [ pkgs.copyq ];

  xdg.configFile."copyq/copyq.conf".source = config.lib.file.mkOutOfStoreSymlink ./copyq.conf;
  xdg.configFile."copyq/themes".source = config.lib.file.mkOutOfStoreSymlink ./themes;
}
