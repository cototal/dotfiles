# Open file manager on Xubuntu
alias o='thunar .'

# Really shutdown
alias shutdown='sudo shutdown -h now'

alias apache='sudo service apache2 restart'

# Setup proxy SSH session to forward web requests
alias ssh-proxy='ssh -D 1337 -f -C -q -N shaun@75.135.74.2 -p 8675'

alias master='git checkout master'

# Checkin all files
alias gadd='git add . -A'

# Amend all changes to previous commit
alias gamend='git add . -A && git commit --amend --no-edit'

# Pretty format gitlog
alias git-log="git log --max-count=15 --pretty=format:\"%h - %an, %ar : %s\""

# Add comment to previous commit
alias git-comment="git commit --amend"

# Generate a random string
alias rnd="php -r 'echo bin2hex(random_bytes(40)) . \"\n\";'"

# Run Symfony app to allow remote connections
alias bcs="./bin/console server:run 0.0.0.0"

# Run WordPress server to allow remote connections
alias wps="wp server --host=0.0.0.0"

# Start .NET Core project to allow remote connections
alias dnr='ASPNETCORE_URLS="http://0.0.0.0:5000" dotnet run'

# Start default tmux session, vim on top with terminal below
# Requires tmuxinator and config from 'dotfiles' repo
function dmux() {
  tmuxinator start default $1
}

# Installs Ruby via rbenv with Tcl/Tk libraries for GUI development
function rbenv-install() {
  CONFIGURE_OPTS="--with-tcl --with-tk" rbenv install $*
}

# Copy shared directory into app for work
function shared-scp() {
  scp apps:/var/www/rails/$1/shared/* .
}

# List size of subdirectories in human-readable format
function folder-size() {
  du -h --max-depth=1 $1
}

# shortened mkdir
function md() {
  mkdir $*
}

# Make directory and navigate into it
function mc() {
  mkdir $1 && cd $_
}

# Print the compiled CoffeeScript to the screen
function coffp() {
  coffee --print $1
}

# Commit all changes with message
function gam() {
  git add . -A && git commit -m "$1"
}

# Checkout a branch
function gc() {
  git checkout $1
}

# Prefix with bundle exec
function b() {
  bundle exec $*
}

# Kill tmux session
function tk() {
  tmux kill-session -t $1
}

# Generate symlink for Apache (for work)
function lna() {
  cd /var/www && sudo ln -s /home/martins/rails/$1/public $1 && cd -
}

# Search processes for name
function psg() {
  ps -ax | grep -i $1
}

# Copy file to clipboard
function xfile() {
  cat $1 | xclip -selection clipboard
}

# Force clients to disconnect and drop PostgreSQL table
function fdrop() {
  psql -c "SELECT pg_terminate_backend(pg_stat_activity.pid) FROM pg_stat_activity WHERE pg_stat_activity.datname = '$1' AND pid <> pg_backend_pid();"
  dropdb $1
}

# Shortcut for symfony app commands
function bc() {
  ./bin/console $*
}

# Navigate to plugin or theme directory
function wpd() {
  cd wp-content/$1/$2
}

# Generate tags for PHP projects
alias phptags='ctags -R --PHP-kinds=cfi --exclude=node_modules --exclude=var --exclude=*.js'

