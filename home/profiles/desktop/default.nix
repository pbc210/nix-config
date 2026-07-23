{ desktopsDir, ... }:
{
  imports = [
    ./modules.nix
    ./programs.nix
    ./services.nix
    ./develop.nix

    "${desktopsDir}/plasma6"
    ../../flatpak
  ];
}
