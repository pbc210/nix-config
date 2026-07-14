{ settings, ... }:
{
  programs.nh = {
    enable = true;

    flake = "${settings.nixConfigDir}";
  };
  home.sessionVariables = {
    NH_HOME_FLAKE = "${settings.nixConfigDir}";
  };
}
