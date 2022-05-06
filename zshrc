export PATH="/opt/homebrew/opt/tcl-tk/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

eval "$(starship init zsh)"


## Load syntax highlighting plugin
##   https://github.com/zdharma-continuum/fast-syntax-highlighting
source $HOME/.zsh//fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh


## Load completion plugin portion of oh-my-zsh
##   https://ohmyz.sh
source $HOME/.oh-my-zsh/lib/completion.zsh

# Initialize the completion system
autoload -Uz compinit

# Cache completion if nothing changed - faster startup time
typeset -i updated_at=$(date +'%j'+ -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
	compinit -i
else
	compinit -C -i
fi

# Enhanced form of menu completion called 'menu selection'
zmodload -i zsh/complist


## Load suggestions system
##   https://github.com/zsh-users/zsh-autosuggestions
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh


## Load mcfly history search
##   https://github.com/cantino/mcfly
eval "$(mcfly init zsh)"


## Set up aliases
alias ls='ls -GF'
alias zshreload='source ~/.zshrc'
alias grep='grep --color=auto'


# Created by `pipx` on 2022-02-04 17:17:08
export PATH="$PATH:/Users/nealhowland/.local/bin"


# Enable pipx autocompletions
eval "$(register-python-argcomplete pipx)"

