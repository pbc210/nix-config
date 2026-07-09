{ pkgs, ... }: {
  boot = {
    kernelPackages = pkgs.cachyosKernels.linuxPackages-cachyos-latest;
    loader.systemd-boot.enable = false;

    lanzaboote = {
      enable = true;
    };
  };
}
