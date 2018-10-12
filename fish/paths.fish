# homebrew
set -gx PATH /usr/local/bin $PATH
set -gx PATH /usr/local/sbin $PATH

# npm
set -gx PATH /usr/local/share/npm/bin $PATH

# nvm
set -gx NVM_DIR ~/.nvm

# load oly
set -gx PATH ~/.oly/bin $PATH
# xing olympus-tools
set -gx PATH ~/Work/olympus-tools/bin $PATH

# go
set -gx GOPATH $HOME/go

# rbenv
set -gx RBENV_ROOT /usr/local/opt/rbenv
set -gx PATH $RBENV_ROOT/bin $PATH
set -gx PATH $RBENV_ROOT/shims $PATH
source (rbenv init - | psub) and rbenv rehash >/dev/null ^&1

# docker
set -gx DOCKER_IP '192.168.99.100'
set -gx DOCKER_TLS_VERIFY '1';
set -gx DOCKER_HOST 'tcp://192.168.99.100:2376';
set -gx DOCKER_CERT_PATH '/Users/christoph.hugo/.docker/machine/machines/default';
set -gx DOCKER_MACHINE_NAME 'default';

# editor
set -gx EDITOR 'subl -w'
