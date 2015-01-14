alias shutdown='sudo shutdown -h now'
alias git-log="git log --pretty=format:\"%h - %an, %ar : %s\""

function rbenv-install() {
  CONFIGURE_OPTS="--with-tcl --with-tk" rbenv install $*
}
