# Path to your oh-my-zsh installation.
export ZSH=/home/netsamir/dotfiles/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/dotfiles/custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(chucknorris colorize colored-man-pages copybuffer copydir copyfile encode64 extract fzf nmap pipenv rand-quote rsync sudo git)

source $ZSH/oh-my-zsh.sh

#-----------------------------------------------------------------------------
# User configuration
#-----------------------------------------------------------------------------

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# ----------------------------------------------------------------------------
# System
# ----------------------------------------------------------------------------

export DEFAULT_USER="netsamir"
export MANPATH=/usr/local/man:$MANPATH
export PERL5LIB=$HOME/local/lib64
export PYTHONSTARTUP=~/.pythonrc

# You may need to manually set your language environment

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

set -o vi
# Preferred editor for local and remote sessions
export EDITOR='vim'

# Compilation flags
export ARCHFLAGS="-arch x86_64"

export PATH=$HOME/.local/bin:$HOME/local/bin:$PATH
# Added for makevirtualenv under anaconda
# export LD_LIBRARY_PATH=$HOME/local/anaconda3/lib:$LD_LIBRARY_PATH

# # ----------------------------------------------------------------------------
# # System
# # ----------------------------------------------------------------------------
# alias vi="vim"
# alias inst='sudo apt-get install'
# alias gxt='tar zxvf '
# alias xt='tar xvf'
# alias l='ls -hlrt'
# alias ll='ls -alrt'
# alias t='tree'
# alias p='pwd'
# alias h='history | awk "{print \$2}" | sort | uniq -c |sort -rn | head -50'
# alias hg='history| egrep'
# alias bc='bc -l'
# alias ag='alias | egrep -i'
# alias copy='xclip -sel clip'
# alias g='egrep -i'
# alias trash='gvfs-trash'

# function c(){
#     count_path=$pwd
#     [ $# != 0 ] && count_path=$1
#     printf "In : ll $count_path | wc -l\n"
#     printf "Out: $(ll $count_path | wc -l)\n"
# }

# function gt(){
#     tar zcvf $1.tgz --remove-files $1
# }
# # ----------------------------------------------------------------------------
# # Expressvpn
# # ----------------------------------------------------------------------------

# alias xc='expressvpn connect'
# alias xs='expressvpn status'

# # ----------------------------------------------------------------------------
# # Workaround
# # ----------------------------------------------------------------------------
# alias net='sudo service network-manager restart'
# alias ssh-add='ssh-add ~/.ssh/id_rsa'

# # ----------------------------------------------------------------------------
# # Browse
# # ----------------------------------------------------------------------------
# alias cDo='cd $HOME/Downloads'
# alias cdo='cd $HOME/dotfiles'
# alias cbi='cd $HOME/bin'
# alias cco='cd $HOME/config'
# alias cv='cd ~/dotfiles/files/vim'

# # ----------------------------------------------------------------------------
# # Edit quickly
# # ----------------------------------------------------------------------------
# alias sz='source ~/.zshrc'
# alias z='vi $HOME/.zshrc && source ~/.zshrc'
# alias v='vi ~/.vimrc'
# alias i='view ~/Documents/Vault/identity.txt'
# alias ii='vi ~/Documents/Vault/identity.txt'

# # ----------------------------------------------------------------------------
# # Django
# # ----------------------------------------------------------------------------
# alias dj='python $DJ_CUR_PROJECT/manage.py'
# alias djc='python $DJ_CUR_PROJECT/manage.py collectstatic'
# alias djr='python $DJ_CUR_PROJECT/manage.py runserver'
# alias djm='python $DJ_CUR_PROJECT/manage.py makemigrations && \
#             python $DJ_CUR_PROJECT/manage.py migrate'

# # ----------------------------------------------------------------------------
# # Python
# # ----------------------------------------------------------------------------
# alias pips='sudo -H pip'
# alias ipy='ipython --TerminalInteractiveShell.editing_mode=vi'

# # ----------------------------------------------------------------------------
# # Git
# # ----------------------------------------------------------------------------
# alias findgit='find ~/dotfiles -type f -exec egrep "git@git" {} \;'
# function ignore(){
#     echo $1 >> .gitignore
#     cat .gitignore
# }

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/netsamir/local/bin/google-cloud-sdk/path.zsh.inc' ]; then . '/home/netsamir/local/bin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/netsamir/local/bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/netsamir/local/bin/google-cloud-sdk/completion.zsh.inc'; fi
