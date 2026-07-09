{ pkgs, ... }: {
  boot = {
    kernelPackages = pkgs.cachyosKernels.linuxPackages-cachyos-latest;
    lanzaboote = {
      enable = true;
    };
  };
}
