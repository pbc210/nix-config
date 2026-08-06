{ settings, pkgs, ... }:
{
  programs.fish = {
    enable = true;

    shellAliases = settings.tools.alias;

    plugins = [
      { name = "fzf-fish"; src = pkgs.fishPlugins.fzf-fish.src; }
      { name = "autopair"; src = pkgs.fishPlugins.autopair.src; }
      { name = "done"; src = pkgs.fishPlugins.done.src; }
      { name = "colored-man-pages"; src = pkgs.fishPlugins.colored-man-pages.src; }
      { name = "grc"; src = pkgs.fishPlugins.grc.src; }
    ];

    interactiveShellInit = ''
      set fish_greeting ""

      bind ctrl-space _atuin_bind_up
      bind alt-tab _fzf_search_directory
      bind tab accept-autosuggestion

      bind ctrl-l forward-token
      bind ctrl-h backward-token

      bind alt-e undo
      bind alt-r redo
    '';
  };

  stylix.targets.fish.enable = true;

  programs.zoxide.enableFishIntegration = true;
  programs.fzf.enableFishIntegration = true;
  programs.starship.enableFishIntegration = true;
  programs.eza.enableFishIntegration = true;
  programs.direnv.enableFishIntegration = true;
  programs.atuin.enableFishIntegration = true;
  programs.lazygit.enableFishIntegration = true;
  programs.nix-index.enableFishIntegration = true;
  programs.kitty.shellIntegration.enableFishIntegration = true;
}
