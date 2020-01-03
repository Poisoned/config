#!/bin/bash

# load homebrew bins before system
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# load NPM binaries
export PATH=/usr/local/share/npm/bin:$PATH

# load Pyenv
# eval "$(pyenv init -)"

# load Rbenv
# export RBENV_ROOT=/usr/local/opt/rbenv

# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# https://github.com/brianmario/mysql2/issues/795#issuecomment-337006164
