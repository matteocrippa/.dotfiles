# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME=powerlevel10k/powerlevel10k
POWERLEVEL10K_MODE="nerdfont-complete"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(archlinux git systemd)

source $ZSH/oh-my-zsh.sh

## Export
export SUDO_ASKPASS=/usr/lib/ssh/x11-ssh-askpass
export ANDROID_HOME=/home/matteo/SDK/Android
export ANDROID_SDK_ROOT=$ANDROID_HOME
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:/home/matteo/SDK/Flutter/bin
export PATH=$PATH:/home/matteo/.npm-global/bin:/home/matteo/.npm-global/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl

## pyenv
eval "$(pyenv init -)"

## Alias
alias ls="exa --color=auto"
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias gitu="git add . && git commit && git push"
#alias wfrecorder="wf-recorder -g \"$(slurp)\""

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Remove percentage sign on first line
unsetopt PROMPT_SP

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/share/nvm/init-nvm.sh
