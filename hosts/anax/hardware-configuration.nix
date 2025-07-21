{lib, ...}: {
  boot = {
    initrd = {
      availableKernelModules = ["nvme" "sd_mod" "thunderbolt" "usb_storage" "xhci_pci"];
    };
    kernelModules = ["kvm-intel"];
    kernelParams = ["nowatchdog"];
  };

  hardware.enableRedistributableFirmware = lib.mkDefault true;

  # Native 14" 1920×1080 panel → ~157 DPI.
  services.xserver.dpi = 157;
}
