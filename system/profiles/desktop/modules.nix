{ modulesDir, ... }:
{
  imports = [
    "${modulesDir}/bluetooth"
    "${modulesDir}/keyboard"
    "${modulesDir}/ldLibraries"
    "${modulesDir}/networking"
    "${modulesDir}/nix"
    "${modulesDir}/security"
    "${modulesDir}/users"
  ];
}
