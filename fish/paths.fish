
# libxml2
set -gx PATH /usr/local/opt/libxml2/bin $PATH

# libxslt
set -gx PATH /usr/local/opt/libxslt/bin $PATH

# openssl
set -gx LIBRARY_PATH /usr/local/opt/openssl@1.1/lib $LIBRARY_PATH
set -gx RUBY_CONFIGURE_OPTS --with-openssl-dir=/usr/local/opt/openssl@1.1

# mysql
# set -gx PATH /usr/local/opt/mysql@5.7/bin $PATH

# homebrew
set -gx PATH /usr/local/bin $PATH
set -gx PATH /usr/local/sbin $PATH

# nvm
set -gx NVM_DIR ~/.nvm

# node
# set -gx PATH $NVM_DIR/versions/node/v10.12.0/bin $PATH

# go
set -gx GOPATH ~/go

# rbenv
set -gx RBENV_ROOT $HOME/.rbenv
set -gx PATH $RBENV_ROOT/bin $PATH
set -gx PATH $RBENV_ROOT/shims $PATH

# pyenv
status --is-interactive; and source (pyenv init -|psub)

# Load rbenv automatically by appending
# the following to ~/.config/fish/config.fish:
# status --is-interactive; and source (rbenv init -|psub)

# set -gx GEM_PATH /Users/christoph.hugo/.gem/ruby/2.5.0:/Users/christoph.hugo/.rbenv/versions/2.5.7/lib/ruby/gems/2.5.0
# set -gx GEM_HOME /Users/christoph.hugo/.rbenv/versions/2.5.7/lib/ruby/gems/2.5.0

# set -gx GEM_PATH /Users/christoph.hugo/.gem/ruby/2.6.0:/Users/christoph.hugo/.rbenv/versions/2.6.5/lib/ruby/gems/2.6.0
# set -gx GEM_HOME /Users/christoph.hugo/.rbenv/versions/2.6.5/lib/ruby/gems/2.6.0

# set -gx PATH $GEM_PATH $PATH
# set -gx PATH $GEM_HOME $PATH

# load oly
set -gx PATH ~/.oly/bin $PATH

# docker
eval (docker-machine env default --no-proxy)
set -gx DOCKER_IP $NO_PROXY;

# editor
set -gx EDITOR 'code -w'

# xingbox
set -gx XB_SERVICE 'hallo-matcher'
set -gx XB_NAME 'megaloh-christoph-hugo'
set -gx XB_API_KEY '3a899cd6bb6455a60d450226d9c894d8'

# terraform
set -gx TF_LOG 'TRACE'
set -gx TF_LOG_PATH 'terraform.log'
