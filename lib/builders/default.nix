{ inputs, overlays }: {
  mkNixos =
    {
      inputs' ? inputs,
      overlays' ? overlays,
    }:
    import ./mkNixos.nix {
      inputs = inputs';
      overlays = overlays';
    };

  mkHome =
    {
      inputs' ? inputs,
      overlays' ? overlays,
    }:
    import ./mkHome.nix {
      inputs = inputs';
      overlays = overlays';
    };
}
