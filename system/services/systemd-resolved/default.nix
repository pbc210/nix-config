{ config, ... }:
{
  services.resolved = {
    enable = true;
    dnssec = "allow-downgrade";
    settings = {
      Resolve = {
        DNSSEC = "allow-downgrade";
        DNSOverTLS = true;
        DNS = config.networking.nameservers;
      };
    };
  };
}
