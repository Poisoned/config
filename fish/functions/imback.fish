function imback
  # Projects to be updated
  set projects hallo-matcher coaches-app coaches-frontend hffm-backend hffm-frontend

  set_color -o; printf 'Welcome back! 🎉'
  set_color -o green; printf ' Updating projects...\n'
  set_color normal


  for project in $projects
    set_color white -o; printf "\n==> $project"
    set_color yellow; printf " will be updated...\n"
    set_color normal
    z $project
    git-up
  end
end
