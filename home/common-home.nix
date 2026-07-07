{ profile, inputs, ... }:
{
  home.username = profile.username;
  home.homeDirectory = profile.homeDir;
  home.stateVersion = profile.stateVersion;

  imports = [
    "${inputs.self}/home/programs"
    #    "${inputs.self}/home/services"
  ];
}
