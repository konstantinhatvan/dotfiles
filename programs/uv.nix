{ ... }:
{
  programs.uv = {
    enable = true;
    package = null;
    settings = {
      exclude-newer = "7 days";
    };
  };
}
