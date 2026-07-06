{
  programs.home-manager.enable = true;

  imports = [
    ./git
    ./gh
    ./zsh
    ./kitty
    ./nix-helper
  ];
}
