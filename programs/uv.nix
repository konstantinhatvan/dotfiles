{ pkgs, ... }:
{
  programs.uv = {
    enable = true;
    package = pkgs.uv;
    settings = {
      exclude-newer = "7 days";
    };
  };
}
