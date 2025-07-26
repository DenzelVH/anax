{
  programs.nh = {
    enable = true;
    flake = "/home/wendy/dotflakes";
    clean = {
      enable = true;
      extraArgs = "--keep-since 1w";
    };
  };
}
