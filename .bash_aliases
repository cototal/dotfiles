alias shutdown='sudo shutdown -h now'
alias git-log="git log --max-count=15 --pretty=format:\"%h - %an, %ar : %s\""
alias apache='sudo service apache2 restart'

function rbenv-install() {
  CONFIGURE_OPTS="--with-tcl --with-tk" rbenv install $*
}
function shared-scp() {
  scp dev:/var/www/rails/$1/shared/* .
}
