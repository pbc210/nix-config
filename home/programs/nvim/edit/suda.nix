{ pkgs, ... }:
{
  programs.nixvim = {
    extraPlugins = [
      pkgs.vimPlugins.suda-vim
    ];

    globals = {
      suda_smart_edit = 1;
    };
  };
}
