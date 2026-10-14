{ config, lib, ... }:
let
  sessionEnv = {
    LANG = "en_GB.UTF-8";
    LC_NUMERIC = "en_GB.UTF-8";
    LC_TIME = "en_GB.UTF-8";
    LC_MONETARY = "de_AT.UTF-8"; # Use Euro
    LC_PAPER = "en_GB.UTF-8";
    LC_NAME = "en_GB.UTF-8";
    LC_ADDRESS = "en_GB.UTF-8";
    LC_TELEPHONE = "en_GB.UTF-8";
    LC_MEASUREMENT = "en_GB.UTF-8";
    LC_IDENTIFICATION = "en_GB.UTF-8";
    PAPERSIZE = "a4";
    DISABLE_TELEMETRY = "1";
    XDG_DATA_DIRS = "${config.home.homeDirectory}/.nix-profile/share:${config.home.homeDirectory}/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:/usr/share:/var/lib/snapd/desktop";
  };
in
{
  home = {
    sessionVariables = sessionEnv;
    sessionPath = [
      "/home/konstantin-hatvan/.opencode/bin"
      "/home/konstantin-hatvan/.local/bin"
      "/home/konstantin-hatvan/.local/share/JetBrains/Toolbox/scripts"
    ];
  };

  xdg.configFile."environment.d/90-session-vars.conf".text =
    lib.concatStringsSep "\n"
      (lib.mapAttrsToList (n: v: "${n}=${v}") sessionEnv);

  dconf.settings = {
    "org/gnome/desktop/default-applications/terminal" = {
      exec = "/snap/bin/ghostty";
      exec-arg = "-e";
    };
  };
}
