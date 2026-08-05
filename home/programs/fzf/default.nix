{
  programs.fzf = {
    enable = true;

    defaultCommand = "fd --type f --strip-cwd-prefix --hidden";
    fileWidgetCommand = "fd --type f --strip-cwd-prefix --hidden";
  };

  stylix.targets.fzf.enable = true;
}
