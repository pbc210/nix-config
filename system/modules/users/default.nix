{ pkgs, settings, ... }: {
  users.users.${settings.userName} = {
    isNormalUser = true;
    description = "user main";
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
    shell = pkgs."${settings.defaultTools.shell}";
    home = settings.homeDir;
    hashedPassword = settings.hashedPassword;
  };
}
