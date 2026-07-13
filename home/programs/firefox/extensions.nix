{ pkgs }:
let
  extensions = with pkgs.nur.repos.rycee.firefox-addons; [
    ublock-origin
    tridactyl
    darkreader
  ];
in
{
  packages = extensions;
}
