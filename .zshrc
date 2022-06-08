# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/yangfengting/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="ys"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions )

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Anaconda 3 config
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/Users/yangfengting/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/Users/yangfengting/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/Users/yangfengting/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/Users/yangfengting/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

# GO Config
#export GOROOT=/usr/local/go
export GOROOT=/usr/local/Cellar/go/1.16.3/libexec
export GOPATH=/Users/yangfengting/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOROOT/bin:$GOBIN

# zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# vs code
export VSCODEPATH=/Applications/Visual\ Studio\ Code.app/Contents/Resources/app
export PATH=$PATH:$VSCODEPATH/bin
#export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

# protobuf
export PROTOC_INSTALL=/usr/local

# docker alias
alias dk="docker"

# Anaconda3 paths
export PATH=/Users/yangfengting/anaconda3/bin:$PATH

# Enable git prompt
GIT_TERMINAL_PROMPT=1

# Viper/Mercury go directory
alias m="cd ~/go/src/gitlab.bj.sensetime.com/mercury"
alias v="cd ~/go/src/gitlab.sz.sensetime.com/viper"

# tmp dir alias
alias t="cd /tmp && open /tmp"
# ssh to port 2222 alias
function ss(){
	echo "ssh -p 2222 root@$1"
	ssh -p 2222 root@$1
}
function sd(){
	echo "ssh -p 2222 -i ~/.ssh/diamond.key ubuntu@$1"
	ssh -p 2222 -i ~/.ssh/diamond.key ubuntu@$1
}
alias gmt="GIT_LFS_SKIP_SMUDGE=1 go mod tidy"
alias gmd="GIT_LFS_SKIP_SMUDGE=1 go mod download -x -json"
alias gmg="go mod graph"
alias gof="gofmt -w . && gci -w . && gofumpt -w ."

alias pu="pulumi up"
alias pf="pulumi refresh"

# Only used for sensear hz alicloud deploy
alias k="kubectl"
alias km="kubectl -n mercury"

# Used for gcode alias
alias gh="gcode hk-jump"

# for kubebuilder
alias kb="kubebuilder"

# devcenter secret copy
alias dsc="echo 563629a102f74fd8 | pbcopy"
# gerrit secret copy
alias gsc="echo 'rZdnx4/tWybSl8zVYaIPUsUoQIHhxgo8zZgmLsV6XA' | pbcopy "

# gomod environment for goland
alias ge="echo 'GOPROXY=https://proxy.golang.com.cn,direct;GOPRIVATE=*.bj.sensetime.com,*.sz.sensetime.com' | pbcopy"

# tmux related alias
alias ta="tmux attach -t"
alias ts="tmux ls"
alias tn="tmux new -s"

# jump to jcv
alias jqa="ssh ubuntu@8.211.161.81"
# jump to aws staging
alias jaws='docker exec -it jump ssh -o "ProxyCommand=ncat -i 3600s --proxy 10.54.0.33:3128 %h %p" ubuntu@34.220.168.32'

alias pgit='https_proxy=http://10.54.0.33:3128 git'
# disable brew update. It has been done via crontab
export HOMEBREW_NO_AUTO_UPDATE=1

# set for bat
export BAT_THEME='Solarized (dark)'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias ib1='ssh ubuntu@ib-test-1.eastus.cloudapp.azure.com'
alias ib2='ssh ubuntu@ib-test-2.eastus.cloudapp.azure.com'

