function gon
  gbs | head -n 15 | nl
  echo 'Which branch: '
  read branch_number
  set branch_name (gbs | awk "NR==$branch_number" | tr -d ' ')
  git checkout $branch_name
end
