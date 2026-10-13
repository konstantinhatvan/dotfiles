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
    ast-grep
    tmux
    hadolint
    tokei
    tree
    parallel
    watchexec
    shellcheck
    shfmt
    yq
    miller
    hyperfine
    dust
  ];

  programs.home-manager.enable = true;
}
