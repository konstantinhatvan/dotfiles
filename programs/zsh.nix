{
  programs.zsh = {
    enable = true;
    enableCompletion = true;

    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [ "git" ];
    };

    initExtra = ''
      # nvm
      export NVM_DIR="$HOME/.nvm"
      [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                    # This loads nvm
      [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

      . "$HOME/.local/bin/env"

      # opencode
      export OPENCODE_REMOTE_CONFIG_API_KEY="op://Infrastructure/OPENCODE_REMOTE_CONFIG_API_KEY/credential"
      alias opencode="op run --no-masking -- opencode"

      # Angular CLI autocompletion
      source <(ng completion script)

      # LiteLLM
      export LITELLM_API_KEY=$(op read "op://Employee/craftworks- LiteLLM key/credential")

      # THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
      export SDKMAN_DIR="$HOME/.sdkman"
      [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
    '';
  };
}
