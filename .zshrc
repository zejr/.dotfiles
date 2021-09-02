# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/zejr/.oh-my-zsh"
export POETRY_HTTP_BASIC_OLIST_USERNAME="86693c6dc93f0034e6be65f658bd16d7f95f8affed31af56"
export POETRY_HTTP_BASIC_OLIST_PASSWORD=""
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export BAT_THEME="TwoDark"


export GOOGLE_IDP_ID=C00iz45dt
export GOOGLE_SP_ID=415506929041
export AWS_REGION=us-east-1
export AWS_DEFAULT_REGION=us-east-1
export AWS_PROFILE=olist-temp # pode usar o nome que lhe for conveniente, ficará em suas credentials
export GOOGLE_USERNAME=jose.vieira@olist.com
export OLIST_TEAM=su-implementation

olist() {
  export AWS_ROLE_ARN=arn:aws:iam::412729474065:role/${OLIST_TEAM}
}

olist-staging() {
  export AWS_ROLE_ARN=arn:aws:iam::678697092296:role/${OLIST_TEAM}
}

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="awesomepanda"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

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
source "/home/zejr/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "/home/zejr/.oh-my-zsh/custom/plugins/zsh-vim-mode/zsh-vim-mode.plugin.zsh"
source "/home/zejr/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "/home/zejr/.oh-my-zsh/custom/plugins/fzf-zsh"

fpath=( "$fpath[@]" "$HOME/.config/znt/zsh-navigation-tools" )

autoload n-aliases n-cd n-env n-functions n-history n-kill n-list n-list-draw n-list-input n-options n-panelize n-help
autoload znt-usetty-wrapper znt-history-widget znt-cd-widget znt-kill-widget
alias naliases=n-aliases ncd=n-cd nenv=n-env nfunctions=n-functions nhistory=n-history
alias nkill=n-kill noptions=n-options npanelize=n-panelize nhelp=n-help
zle -N znt-history-widget
bindkey '^R' znt-history-widget
setopt AUTO_PUSHD HIST_IGNORE_DUPS PUSHD_IGNORE_DUPS
zstyle ':completion::complete:n-kill::bits' matcher 'r:|=** l:|=*'
### END ###


alias ls="ls --color"
alias gpl="git fetch && git pull origin"
alias gph="git push origin"
alias joplin="~/.joplin-bin/bin/joplin"
alias olist="GIT_SSH_COMMAND='ssh -i /home/zejr/.ssh/id_rsa_olist'"
alias yarn="/usr/local/lib/node_modules/yarn/bin/yarn"
alias pg_start="sudo service postgresql start && sudo update-rc.d postgresql enable"
alias poetry="~/.poetry/bin/poetry"
alias calc="speedcrunch"
alias vpn="sudo openvpn --config ~/Documentos/certifications/OlistVPN.ovpn"
alias cat="bat --paging=never"
alias archi="./Downloads/Archi/Archi &"


source /usr/share/nvm/init-nvm.sh

export FZF_DEFAULT_OPTS="--extended --height 40% --layout=reverse-list --border"
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' --color fg:#ebdbb2,bg:#282828,hl:#fabd2f,fg+:#ebdbb2,bg+:#3c3836,hl+:#fabd2f --color info:#83a598,prompt:#bdae93,spinner:#fabd2f,pointer:#83a598,marker:#fe8019,header:#665c54'

bindkey -s '^n' 'nvim $(fzf --preview "bat --color=always --style=numbers --line-range=:500 {}")\n'
bindkey -s '^f' 'cd $(fd . "/home/zejr" --type directory | fzf )\n'

function test() {
    if [$1 = "olist"]; then
        echo "$1 git fetch $2 && $1 git pull origin $2";
    else
        echo "git fetch $1 && git pull origin $1";
    fi

}

