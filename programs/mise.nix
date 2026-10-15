{ ... }:
{
  programs.mise = {
    enable = true;
    enableZshIntegration = true;
    globalConfig = {
      settings.idiomatic_version_file_enable_tools = [ "node" ];
      tools = {
        node = "24.21.0";
        java = "25.0.2";
        maven = "3.9.15";
        uv = "0.13.1";
      };
    };
  };
}
