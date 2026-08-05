{
  programs.niri.enable = true;
  programs.niri.settings.prefer-no-csd = false;

  imports = [
    ./inputs
    ./outputs
  ];

  stylix.targets.niri.enable = true;
}
