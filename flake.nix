{
  description = "My nix configuration for nixos and Home Manager";

  nixConfig = {
    extra-substituters = [
      "https://pbcdev.cachix.org"
      "https://cache.nixos.org"
      "https://nix-community.cachix.org"
      "https://chaotic-nyx.cachix.org"
    ];

    extra-trusted-public-keys = [
      "pbcdev.cachix.org-1:iZbrMY/10HM5BQPXeIIHkGoDc4boLuSZYiZuPhIn9P8="
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      "chaotic-nyx.cachix.org-1:HfnXSw4pj95iI/n17rIDy40agHj12WfF+Gqk6SonIT8="
    ];
    allow-unfree = true;
    auto-optimise-store = true;
  };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/release-26.05";
    flake-parts.url = "github:hercules-ci/flake-parts";
    treefmt-nix.url = "github:numtide/treefmt-nix";

    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    schemes = {
      url = "github:pbc210/schemes";
      flake = false;
    };

    # ==================== system ====================

    cachyos-kernel = {
      url = "github:xddxdd/nix-cachyos-kernel/release";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    lanzaboote = {
      url = "github:nix-community/lanzaboote/v1.1.0";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";


    # ==================== home ====================

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    plasma-manager = {
      url = "github:nix-community/plasma-manager";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
    };

    niri = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-flatpak.url = "github:gmodena/nix-flatpak/v0.7.0";

    nixvim = {
      url = "github:nix-community/nixvim/nixos-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    claude-desktop.url = "github:Reginleif88/claude-cowork-nix";

    vscode-extensions.url = "github:nix-community/nix-vscode-extensions";

    catppuccin.url = "github:catppuccin/nix";

    wezterm-types = {
      url = "github:/DrKJeff16/wezterm-types";
      flake = false;
    };

    nix-index-database = {
      url = "github:nix-community/nix-index-database";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{ flake-parts
    , ...
    }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" ];
      imports = [
        inputs.treefmt-nix.flakeModule
      ];

      perSystem = { pkgs, ... }: {
        treefmt.config = {
          projectRootFile = "flake.nix";
          programs = {
            nixpkgs-fmt.enable = true;
            prettier.enable = true;
          };
        };

        packages = import ./packages { inherit pkgs; };
        devShells.default = import ./modules/devshell.nix { inherit pkgs; };
      };

      flake =
        let
          overlays = import ./overlays { inherit inputs; };
          libx = import ./lib { inherit inputs overlays; };

          extraModulesHome = with inputs; [
            plasma-manager.homeModules.plasma-manager
            niri.homeModules.niri
            nix-flatpak.homeManagerModules.nix-flatpak
            nixvim.homeModules.nixvim
            claude-desktop.homeManagerModules.default
            catppuccin.homeModules.catppuccin
            nix-index-database.homeModules.default
            stylix.homeModules.stylix
          ];

          extraModulesNixos = with inputs; [
            lanzaboote.nixosModules.lanzaboote
            home-manager.nixosModules.home-manager
            chaotic.nixosModules.default
          ];
        in
        {
          overlays.default = overlays;

          nixosConfigurations = libx.builders.mkNixos {
            extraModules = [
              {
                # Embed Home Manager into Nixos
                home-manager = libx.builders.mkHome {
                  extraModules = extraModulesHome;
                  standalone = false;
                };
              }
            ]
            ++ extraModulesNixos;
          };

          homeConfigurations = libx.builders.mkHome { extraModules = extraModulesHome; };
        };
    };
}
