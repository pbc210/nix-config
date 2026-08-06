{ programsDir, ... }:
{
  imports = [
    "${programsDir}/nix-ld"
    "${programsDir}/zsh"
    "${programsDir}/fish"
  ];
}
