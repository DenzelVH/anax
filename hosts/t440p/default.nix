{pkgs, ...}: {
  imports = [
    ./disk-configuration.nix
    ./hardware-configuration.nix
    ./power-management.nix

    ./programs/dconf.nix
    ./programs/gnupg.nix
    ./programs/thunar.nix
    ./services/blueman.nix
    ./services/dbus.nix
    ./services/gnome-keyring.nix
    ./services/greetd.nix
    ./services/gvfs.nix
    ./services/pipewire.nix
    ./virtualisation/containers.nix
    ./virtualisation/docker.nix
    ./virtualisation/podman.nix

    ../config/fonts
    ../config/hardware/acpi_call
    ../config/hardware/bluetooth
    ../config/hardware/cpu/intel
    ../config/hardware/gpu/intel
    ../config/hardware/ssd
    ../config/window-managers/hyprland
  ];

  boot.kernelPackages = pkgs.linuxPackages_xanmod_latest;

  hardware = {
    graphics = {
      enable = true;
      enable32Bit = true;
    };
  };

  services = {
    btrfs.autoScrub.enable = true;

    fwupd.enable = true;

    hardware.bolt.enable = true;
  };

  # Intel Core i5-4210M
  boot.kernelParams = ["i915.force_probe=0416" "i915.enable_guc=3"];
}
