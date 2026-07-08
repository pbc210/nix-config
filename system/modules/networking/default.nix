{ profile, ... }:
{
  networking = {
    nameservers = profile.network.dns.ipv4 ++ profile.network.dns.ipv6;
  };
  imports = [ ./firewall.nix ];
}
