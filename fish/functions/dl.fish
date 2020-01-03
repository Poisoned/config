function dl
  torsocks deepl translate -t EN $argv | pbcopy
  echo all | history delete --prefix 'dl' > /dev/null
end
