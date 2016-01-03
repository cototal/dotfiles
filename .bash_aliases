alias o='thunar .'
alias shutdown='sudo shutdown -h now'
alias apache='sudo service apache2 restart'

alias master='git checkout master'
alias wacom1="xsetwacom --set 'Wacom Intuos3 9x12 pad' MapToOutput 'Virtual1'"
alias gadd='git add . -A'
alias gamend='git add . -A && git commit --amend --no-edit'
alias git-log="git log --max-count=15 --pretty=format:\"%h - %an, %ar : %s\""
alias git-comment="git commit --amend"

alias cc='coffee -o lib/ -cw src/'

function dmux() {
  mux start default $1
}

function rbenv-install() {
  CONFIGURE_OPTS="--with-tcl --with-tk" rbenv install $*
}

function shared-scp() {
  scp dev:/var/www/rails/$1/shared/* .
}

function folder-size() {
  du -h --max-depth=1 $1
}

function mc() {
  mkdir $1 && cd $_
}

function coff() {
  coffee -o $1 -cw $2
}

function coffp() {
  coffee --print $1
}

function gam() {
  git add . -A && git commit -m "$1"
}
function gc() {
  git checkout $1
}
function b() {
  bundle exec $*
}
function tk() {
  tmux kill-session -t $1
}

function lna() {
  sudo ln -s /home/martins/rails/$1/public $1
}

function psg() {
  ps -ax | grep -i $1
}
