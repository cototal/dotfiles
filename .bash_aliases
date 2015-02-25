alias shutdown='sudo shutdown -h now'
alias git-log="git log --pretty=format:\"%h - %an, %ar : %s\""
alias apache='sudo service apache2 restart'

function rbenv-install() {
  CONFIGURE_OPTS="--with-tcl --with-tk" rbenv install $*
}
function shared-scp() {
  scp dev6:/var/www/rails/$1/shared/* .
}
