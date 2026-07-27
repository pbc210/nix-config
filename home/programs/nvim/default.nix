{ inputs, ... }:
{
  programs.nixvim = {
    enable = true;
    nixpkgs.source = inputs.nixpkgs;
  };

  imports = [
    ./base
    ./diagnostic
    ./direnv
    ./edit
    ./file
    ./git
    ./languages
    ./load-config
    ./terminal
    ./ui
    ./utilities
    ./workspace
  ];
}
