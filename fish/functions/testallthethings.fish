function imback
  set_color -o; printf '! Updating projects...\n'

  set projects hallo-matcher hffm-backend hffm-frontend

  for project in $projects
    set_color white -o; printf "\n$project"
    set_color yellow; printf " will be updated...\n"
    set_color normal
    z $project
    git-up
  end
end
