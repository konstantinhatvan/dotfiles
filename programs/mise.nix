{ ... }:
{
  programs.mise = {
    enable = true;
    enableZshIntegration = true;
    globalConfig = {
      settings.idiomatic_version_file_enable_tools = [ "node" ];
      tools = {
        node = "lts";
        java = "lts";
        maven = "3";
        uv = "latest";
      };
    };
  };
}
