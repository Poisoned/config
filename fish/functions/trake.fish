function trake
    set -lx RAILS_ENV test
    bundle exec rake $argv
end
