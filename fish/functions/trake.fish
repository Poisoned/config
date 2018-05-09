function trake
    set -lx RAILS_ENV test
    rake $argv
end
