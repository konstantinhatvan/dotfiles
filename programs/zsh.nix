{
  programs.zsh = {
    enable = true;
    enableCompletion = true;

    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [ "git" ];
    };

    initContent = ''
      # LiteLLM
      export LITELLM_API_KEY="op://Employee/craftworks- LiteLLM key/credential"

      # opencode
      export OPENCODE_REMOTE_CONFIG_API_KEY="op://Infrastructure/OPENCODE_REMOTE_CONFIG_API_KEY/credential"
      alias opencode="op run --no-masking -- opencode"
    '';
  };
}
