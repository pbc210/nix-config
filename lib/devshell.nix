{ pkgs }:
pkgs.mkShell {
  nativeBuildInputs = [
    pkgs.nixd
    pkgs.nixfmt-rfc-style
  ];
  shellHook = ''echo "welcome to nixos config"'';
}
