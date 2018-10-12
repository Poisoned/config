function base
  git stash save -u
  git rebase $argv
  git stash pop
end
