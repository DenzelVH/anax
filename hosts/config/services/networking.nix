{
  networking = {
    networkmanager = {
      enable = true;
      wifi = {
        backend = "iwd";
        powersave = true;
      };
    };

    firewall = {
      enable = true;
      allowedTCPPorts = [
        # TODO: cleanup
        8081
        4321
      ];
      checkReversePath = "loose";
    };
  };
}
