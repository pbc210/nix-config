{ settings, pkgs, ... }:
{
  system.stateVersion = settings.stateVersion;

  time.timeZone = settings.timeZone;
  i18n.defaultLocale = settings.locale;

  imports = [
    ./programs
    ./services
    ./modules
  ];

  environment.systemPackages = [ pkgs.mkcert ];
}
