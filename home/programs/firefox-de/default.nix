{ pkgs, profile, ... }:
{
  programs.firefox = {
    enable = true;
    #package = pkgs.firefox-devedition;
    profiles.${profile.userName} = {
      id = 0;
      name = profile.userName;
      isDefault = true;
      extensions = import ./extensions.nix { inherit pkgs; };

      settings = {
        "extensions.autoDisableScopes" = 0;
        "extensions.enabledScopes" = 15;
      };
    };
  };
}
