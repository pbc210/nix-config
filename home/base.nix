{ settings, inputs, pkgs, ... }:
{
  home.username = settings.identity.username;
  home.homeDirectory = settings.dirs.home;
  home.stateVersion = settings.stateVersion;

  imports = [
    "${inputs.self}/home/programs"
    "${inputs.self}/home/services"
    "${inputs.self}/home/modules"
    "${inputs.self}/home/flatpak"
  ];

  home.packages = [
    pkgs.nixd
    pkgs.treefmt
  ];
}
