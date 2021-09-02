# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/zejr/.oh-my-zsh"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export BAT_THEME="TwoDark"


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="awesomepanda"

COMPLETION_WAITING_DOTS="true"

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

