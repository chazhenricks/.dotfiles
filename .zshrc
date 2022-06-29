# Load: Configurations
source $HOME/.dotfiles/zsh/config.zsh

# Load: Plugins
source $HOME/.dotfiles/zsh/plugins.zsh

# Load: OH-MY-ZSH
source $ZSH/oh-my-zsh.sh


# Load: ALIASES
source $HOME/.dotfiles/zsh/aliases.zsh

# JAVA SHIT
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
eval export PATH="/Users/chenricks/.jenv/shims:${PATH}"
export JENV_SHELL=zsh
export JENV_LOADED=1
unset JAVA_HOME
source '/usr/local/Cellar/jenv/0.5.4/libexec/libexec/../completions/jenv.zsh'
jenv rehash 2>/dev/null
jenv refresh-plugins
jenv() {
  typeset command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  enable-plugin|rehash|shell|shell-options)
    eval `jenv "sh-$command" "$@"`;;
  *)
    command jenv "$command" "$@";;
  esac
}
export PATH="/usr/local/opt/gradle@6/bin:$PATH"


# NODE SHIT
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# MAKE SURE MY BIN IS IN MY PATH BECAUSE I MADE AND AND I WANT IT NOW
export PATH="$HOME/bin:$PATH"

# MAKE SURE POSTGRES IS IN HERE BECAUSE HOMEBREW DOESNT LIKE THAT IT IS A SPECIFIC VERSION
export PATH="$PATH:/usr/local/Cellar/postgresql@13/13.6_1/bin"
export PATH="/usr/local/opt/postgresql@13/bin:$PATH"
