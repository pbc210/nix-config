{ inputs, ... }:
{
  programs.nixvim = {
    enable = true;
    nixpkgs.source = inputs.nixpkgs;

    diagnostic = {
      settings ={
        update_in_insert = true;
        float = {
          border = "rounded";
          source = "always";
        };
        severity_sort = true;
      };
    };
  };

  imports = [
    ./options.nix
    ./keymaps
    ./plugins
    ./ui
    ./languages
    ./editor
  ];
}
