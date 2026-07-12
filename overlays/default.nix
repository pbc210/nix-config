{ inputs }:
[
  (import ./cachyos-kernel { inherit inputs; })
  (import ./nur { inherit inputs; })
]
