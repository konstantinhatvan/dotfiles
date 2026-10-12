{ pkgs, ... }:
{
  home.username = "konstantin-hatvan";
  home.homeDirectory = "/home/konstantin-hatvan";
  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    ripgrep
    jq
    fd
    neovim
    gnumake
  ];

  programs.home-manager.enable = true;
}
