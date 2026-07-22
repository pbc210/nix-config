{ inputs }:
[
  (import ./cachyos-kernel { inherit inputs; })
  (import ./nur { inherit inputs; })
  ./dotnet-sdk10-bin
]
