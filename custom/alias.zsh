
alias sa='alias | egrep -i'
alias sh='history | egrep'
alias vi="/usr/local/bin/vim"
alias h='history | awk "{print \$2}" | sort | uniq -c |sort -rn | head -50'

# ----------------------------------------------------------------------------
# Quick edit
# ----------------------------------------------------------------------------
#
alias s='source ~/.zshrc'
alias dot='cd ~/dotfiles/custom/ && vim && source ~/.zshrc'
alias z='vim $HOME/.zshrc && source ~/.zshrc'
alias v='/usr/bin/vim ~/.vimrc'
alias k='vim /home/netsamir/dotfiles/custom/key-bindings.zsh && source ~/.zshrc'
alias a='vim /home/netsamir/dotfiles/custom/alias.zsh && source ~/.zshrc'
alias f='vim /home/netsamir/dotfiles/custom/functions.zsh && source ~/.zshrc'


alias i='view ~/Documents/Vault/identity.txt'
alias ii='vi ~/Documents/Vault/identity.txt'

# ----------------------------------------------------------------------------
# Dictories
# ----------------------------------------------------------------------------
#
alias d='dirs -v | head -20'

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias -- -='cd -'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'
alias 10='cd -10'
alias 12='cd -12'
alias 13='cd -13'
alias 14='cd -14'
alias 15='cd -15'
alias 16='cd -16'
alias 17='cd -17'
alias 18='cd -18'
alias 19='cd -19'
alias 20='cd -20'

alias md='mkdir -p'
alias rd=rmdir

# ----------------------------------------------------------------------------
# List directory contents
# ----------------------------------------------------------------------------
#
alias l='ls -lFrh'    #size,show type,human readable, by date
alias lll='ls -lAFrth'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
alias ldot='ls -ld .*'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'
alias lc='ls --format=single-column'

# ----------------------------------------------------------------------------
# History
# ----------------------------------------------------------------------------
#
alias h='history'
alias hh='history | awk "{print \$2}" | sort | uniq -c |sort -rn | head -50'
alias hgrep="fc -El 0 | egrep"
alias sh='history| egrep'


# ----------------------------------------------------------------------------
# SSH
# ----------------------------------------------------------------------------
#
alias ssh-add='ssh-add ~/.ssh/id_rsa'
alias wf='ssh netsamir@web537.webfaction.com'

# Make zsh know about hosts already accessed by SSH
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

# ----------------------------------------------------------------------------
# Utils
# ----------------------------------------------------------------------------

alias bc='bc -l'
alias g='egrep -iR'

alias -g gg='| egrep'
alias -g NE="2> /dev/null"
alias -g NUL="> /dev/null 2>&1"
alias -g pp="2>&1| pygmentize -l pytb"


alias dud='du -d 1 -h | sort -n'
alias duf='du -sh *'
function fd(){
    find . -type d -name "*${1}*"

}

function ff(){
    find . -type f -name "*${1}*"
}

#list whats inside packed file
alias -s zip="unzip -l"

alias t='tree'
alias p='pwd'
alias copy='xclip -sel clip'
alias -g yy='| xclip -sel clip'
alias cat='colorize_via_pygmentize'

alias del='gvfs-trash'
alias o='gvfs-open'

alias zxt='tar zxvf '
alias xt='tar xvf'

alias run="python -m http.server 8790"


function c(){
    count_path=$pwd
    [ $# != 0 ] && count_path=$1
    printf "In : ll $count_path | wc -l\n"
    printf "Out: $(ll $count_path | wc -l)\n"
}

function gt(){
    tar zcvf $1.tgz --remove-files $1
}

function reload(){
    for server in $(ls $HOME/Ansible/.vagrant/machines/); do
        /usr/bin/vagrant reload $server
    done
}

function ltx(){
    filename=$(basename $1 .tex)
    /usr/bin/latex $1
    gvfs-open ${filename}.dvi
}

function c(){
    count_path=$pwd
    [ $# != 0 ] && count_path=$1
    printf "In : ll $count_path | wc -l\n"
    printf "Out: $(ll $count_path | wc -l)\n"
}

function ignore(){
    echo $1 >> .gitignore
    cat .gitignore
}

# Perl grep, because 'grep -P' is terrible. Lets you work with pipes or files.
function prep(){ # [pattern] [filename unless STDOUT]
    perl -nle 'print if /'"$1"'/i;' $2
}


# zsh is able to auto-do some kungfoo
# depends on the SUFFIX :)
if is-at-least 4.2.0; then
  # open browser on urls
  if [[ -n "$BROWSER" ]]; then
    _browser_fts=(htm html de org net com at cx nl se dk)
    for ft in $_browser_fts; do alias -s $ft=$BROWSER; done
  fi

  _editor_fts=(cpp cxx cc c hh h inl asc txt TXT tex)
  for ft in $_editor_fts; do alias -s $ft=$EDITOR; done

  if [[ -n "$XIVIEWER" ]]; then
    _image_fts=(jpg jpeg png gif mng tiff tif xpm)
    for ft in $_image_fts; do alias -s $ft=$XIVIEWER; done
  fi

  _media_fts=(ape avi flv m4a mkv mov mp3 mpeg mpg ogg ogm rm wav webm)
  for ft in $_media_fts; do alias -s $ft=mplayer; done

  #read documents
  alias -s pdf=acroread
  alias -s ps=gv
  alias -s dvi=xdvi
  alias -s chm=xchm
  alias -s djvu=djview

  #list whats inside packed file
  alias -s zip="unzip -l"
  alias -s rar="unrar l"
  alias -s tar="tar tf"
  alias -s tar.gz="echo "
  alias -s ace="unace l"
fi

# ----------------------------------------------------------------------------
# Expressvpn
# ----------------------------------------------------------------------------
#
alias xc='expressvpn connect'
alias xd='expressvpn disconnect'
alias xs='expressvpn status'
alias xl='expressvpn list'

# ----------------------------------------------------------------------------
# Web Development
# ----------------------------------------------------------------------------
#
alias harp='harp server'

# ----------------------------------------------------------------------------
# Django
# ----------------------------------------------------------------------------
alias dj='python $DJ_CUR_PROJECT/manage.py'
alias djc='python $DJ_CUR_PROJECT/manage.py collectstatic'
alias djr='python $DJ_CUR_PROJECT/manage.py runserver'
alias djm='python $DJ_CUR_PROJECT/manage.py makemigrations && \
            python $DJ_CUR_PROJECT/manage.py migrate'
# ----------------------------------------------------------------------------
# Python
# ----------------------------------------------------------------------------
alias ipy='/usr/bin/ipython --TerminalInteractiveShell.editing_mode=vi'

# ----------------------------------------------------------------------------
# Git
# ----------------------------------------------------------------------------
alias findgit='find ~/ -name ".git" -type f -exec egrep "git@git" {} \;'
