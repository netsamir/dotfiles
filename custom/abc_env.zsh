# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr
#

# ----------------------------------------------------------------------------
# System variables
# ----------------------------------------------------------------------------
#
#
# Compilation flags
export ARCHFLAGS="-arch x86_64"

export DEFAULT_USER="netsamir"

# Preferred editor for local and remote sessions
export EDITOR='vim'

export PATH=$HOME/local/bin:$HOME/.local/bin:$PATH
export MANPATH=$HOME/usr/local/man:$MANPATH
export PERL5LIB=$HOME/local/lib64
export PYTHONSTARTUP=~/.pythonrc
export RESTIC_PASSWORD_FILE=~/.vault/restic_passwords.txt

# Python Virtual environments
export WORKON_HOME=/home/netsamir/.virtualenvs

# You may need to manually set your language environment
# 20192501 - check a better way to work with the script : .env

eval $(dircolors -b $HOME/.dircolors)

export FZF_DEFAULT_OPTS="--height 90% --reverse --preview 'file {}' --preview-window down:1"

