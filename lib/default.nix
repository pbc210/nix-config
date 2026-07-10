{ overlays, inputs }:
{
  builders = import ./builders.nix { inherit overlays inputs; };
}
