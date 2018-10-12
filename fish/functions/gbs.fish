function gbs
  git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)' | head -n 25
end
