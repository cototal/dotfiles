alias o='thunar .'
alias shutdown='sudo shutdown -h now'
alias apache='sudo service apache2 restart'

alias master='git checkout master'
alias wacom1="xsetwacom --set 'Wacom Intuos3 9x12 pad' MapToOutput 'Virtual1'"
alias gadd='git add . -A'
alias git-log="git log --max-count=15 --pretty=format:\"%h - %an, %ar : %s\""

alias cc='coffee -o lib/ -cw src/'

function rbenv-install() {
  CONFIGURE_OPTS="--with-tcl --with-tk" rbenv install $*
}

function shared-scp() {
  scp dev:/var/www/rails/$1/shared/* .
}

function folder-size() {
  du -h --max-depth=1 $1
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
