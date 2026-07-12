{ pkgs }:
let
  extensions = with pkgs.nur.repos.rycee.firefox-addons; [
    ublock-origin
    tridactyl
  ];
in
{
  packages = extensions;
}
