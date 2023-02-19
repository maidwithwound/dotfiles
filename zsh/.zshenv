export HOME="/home/sonya"

source ~/.config/user-dirs.dirs

export XINITRC="$HOME/.config/X11/xinitrc"
export ERFILE="$HOME"/.cache/X11/xsession-error
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority

export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache
export MANPATH="/usr/local/man:$MANPATH"
export EDITOR=nvim
export PAGER=~/.local/bin/moar
export HISTFILE="$XDG_STATE_HOME"/zsh/history

export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GOPATH="$XDG_DATA_HOME"/go
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
export NUGET_PACKAGES="$XDG_CACHE_HOME"/nuget_packages
export OMNISHARPHOME="$XDG_CONFIG_HOME"/omnisharp
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java

