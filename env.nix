{ lib, ... }:
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
  };
in
{
  home = {
    sessionVariables = sessionEnv;
    sessionPath = [
      "/home/konstantin-hatvan/.opencode/bin"
    ];
  };

  xdg.configFile."environment.d/90-session-vars.conf".text =
    lib.concatStringsSep "\n"
      (lib.mapAttrsToList (n: v: "${n}=${v}") sessionEnv);
}
