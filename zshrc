#zmodload zsh/zprof

# Show contents of directory after cd-ing into it
chpwd() {
  ls -lrthG
}

# History rocks
HISTSIZE=20000
SAVEHIST=20000
HISTFILE=~/.zsh_history
HISTTIMEFORMAT="%h %d %H:%M:%S "

typeset -g ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE='20'

export PATH=/usr/local/bin:$PATH             # homebrew/user installs
export PATH=./bin:$PATH                      # local directory bin

export PATH=./node_modules/.bin:$PATH
export NODE_PATH=$HOME/.npm/lib/node_modules
export PATH=$PATH:$HOME/.npm/bin
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/include
export PATH=$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin
export PATH=$PATH:/Applications
# for npm
export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig

export PATH=./.bundle/bin:$PATH
export PATH=./.config/yarn/global/node_modules:$PATH
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

source $HOME/dotfiles/zsh/aliases            # aliases
source $HOME/dotfiles/zsh/functions          # functions
source $HOME/dotfiles/zsh/prompt             # prompt

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

#zprof
