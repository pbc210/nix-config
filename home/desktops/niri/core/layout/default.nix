{
  programs.niri.settings.layout = {
    focus-ring.enable = false;
  };

  imports = [
    ./border.nix
    ./insert-hint.nix
    ./shadow.nix
  ];
}
