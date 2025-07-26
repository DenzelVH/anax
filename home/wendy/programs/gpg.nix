{config, ...}: {
  programs.gpg = {
    enable = true;
    homedir = "${config.xdg.dataHome}/gnupg";
    settings = {
      default-key = "TODO: REPLACEME";
    };
  };
}
