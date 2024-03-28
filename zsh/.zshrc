


if [ "$(uname -s)" = "Linux" ]; then
	export PATH=$PATH:"/home/linuxbrew/.linuxbrew"
fi

export PATH=$HOME/bin:/usr/local/bin:$PATH
export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOBIN
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export USE_GKE_GCLOUD_AUTH_PLUGIN=True
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'

export WORKSPACE_MANAGER=$HOME/workspaces
source $WORKSPACE_MANAGER/init.sh


export BAT_THEME=OneHalfDark

alias vim=nvim


echo "hello nword"
