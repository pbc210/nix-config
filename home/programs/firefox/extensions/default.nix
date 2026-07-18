{ pkgs }:
let
  extensions = with pkgs.nur.repos.rycee.firefox-addons; [
    ublock-origin
    tridactyl
    darkreader
    youtube-nonstop
    enhancer-for-youtube
  ];
in
{
  force = true;
  packages = extensions;
}
