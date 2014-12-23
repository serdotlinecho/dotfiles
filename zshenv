# Move zsh config to $XDG_CONFIG_HOME
ZDOTDIR=~/.config/zsh

export EDITOR=vim
export VISUAL="$EDITOR"
export SUDO_EDITOR="$EDITOR"
export BLOCK_SIZE=human-readable

# Make sure XDG dirs are set
[[ -n "$XDG_CONFIG_HOME" ]] || export XDG_CONFIG_HOME="$HOME/.config"
[[ -n "$XDG_CACHE_HOME" ]] || export XDG_CACHE_HOME="$HOME/.cache"
[[ -n "$XDG_DATA_HOME" ]] || export XDG_DATA_HOME="$HOME/.local/share"

# More XDG workaround
export VIMDOTDIR="$XDG_CONFIG_HOME/vim"
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export MPLAYER_HOME="$XDG_CONFIG_HOME/mplayer"
export MPV_HOME="$XDG_CONFIG_HOME/mpv"
export GIMP2_DIRECTORY="$XDG_CONFIG_HOME/gimp"
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
export XAUTHORITY="$XDG_CACHE_HOME/Xauthority"

if [ -n "$DISPLAY" ]; then
    export BROWSER=dwb
else
    export BROWSER=w3m
fi

if [[ -n $TMUX ]]
    then
export TERM=screen-256color
fi

# ccache
# /usr/lib/ccache/bin
export CCACHE_DIR="/home/serdotlinecho/.ccache"

