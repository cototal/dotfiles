alias shutdown='sudo shutdown -h now'
alias git-log="git log --pretty=format:\"%h - %an, %ar : %s\""

function rbenv-install() {
  CONFIGURE_OPTS="--with-tcl --with-tk" rbenv install $*
}
function shared-scp() {
  scp dev6:/var/www/rails/$1/shared/* .
}
