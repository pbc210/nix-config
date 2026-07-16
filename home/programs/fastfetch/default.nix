{ config, inputs, ... }:
{
  programs.fastfetch = {
    enable = true;
  };
  xdg.configFile."fastfetch/config.jsonc".source = config.lib.file.mkOutOfStoreSymlink ./config.jsonc;
  xdg.configFile."fastfetch/logo/nixos.webp".source = config.lib.file.mkOutOfStoreSymlink "${inputs.self}/assets/logo/nixos.webp";
}
