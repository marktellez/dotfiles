# Show contents of directory after cd-ing into it
chpwd() {
  ls -lrthG
}

# History rocks
HISTSIZE=20000
SAVEHIST=20000
HISTFILE=~/.zsh_history
HISTTIMEFORMAT="%h %d %H:%M:%S "

autoload -U compinit
compinit -u

source $HOME/dotfiles/zsh/aliases            # aliases
source $HOME/dotfiles/zsh/functions          # functions
source $HOME/dotfiles/zsh/prompt             # prompt

export PATH=/usr/local/bin:$PATH             # homebrew/user installs
export PATH=./bin:$PATH                      # local directory bin

export PATH=./node_modules/.bin:$PATH
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/include

# for npm
export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig
