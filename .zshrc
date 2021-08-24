#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

eval "$(rbenv init -)"

# aliases
alias aws="docker run --rm -it -v ~/.aws:/root/.aws -v $(pwd):/aws amazon/aws-cli"
alias gcloud='docker run --rm -it -v ~/.config/gcloud:/root/.config/gcloud -v $(pwd):$(pwd) -w $(pwd) --entrypoint=gcloud google/cloud-sdk'
alias gba="git branch -a"
alias gs="git status"
alias gcm="git checkout master"
alias gfp="git fetch --prune"

# prompt options
unsetopt prompt_cr
