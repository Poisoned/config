function phrase
  set -l token (cat .phraseapp-token)
  phraseapp $argv -t $token
end
