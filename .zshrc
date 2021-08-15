export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

eval "$(rbenv init -)"

alias aws="docker run --rm -it -v ~/.aws:/root/.aws -v $(pwd):/aws amazon/aws-cli"
