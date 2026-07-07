{ profile, ... }:
{
  system.stateVersion = profile.stateVersion;

  imports = [
    ./programs
    ./services
    ./modules/users.nix
  ];
}
