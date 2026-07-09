{
  services.pulseaudio.enable = false;
  services.pipewire = {
    enable = true;
    pluse.enable = true;
    jack.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
  };
}
