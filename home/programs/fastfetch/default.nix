{config, inputs, ...}:
{
  programs.fastfetch = {
    enable = true;
  };
  home.file.".config/fastfetch/config.jsonc".source = config.lib.file.mkOutOfStoreSymlink ./config.jsonc;
  home.file.".config/fastfetch/logo/nixos.webp".source = config.lib.file.mkOutOfStoreSymlink "${inputs.self}/assets/logo/nixos.webp";
}
