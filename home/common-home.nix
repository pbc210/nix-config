{profile, ...}:
{
  home.username = profile.username;
  home.homeDirectory = "/home/${profile.username}";
  home.stateVersion = "25.11";
}
