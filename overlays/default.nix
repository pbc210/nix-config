{ inputs }:
[
  (import ./nur { inherit inputs; })
  (import ./dotnet-sdk10-bin)
]
