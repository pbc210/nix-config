{ settings, inputs, ... }:
{
  home.username = settings.userName;
  home.homeDirectory = settings.homeDir;
  home.stateVersion = settings.stateVersion;

  imports = [
    "${inputs.self}/home/programs"
    "${inputs.self}/home/services"
    "${inputs.self}/home/modules"
  ];
}
