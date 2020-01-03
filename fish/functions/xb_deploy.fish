function xb_deploy
  set args $argv
  if not set -q args[1]
    echo "ℹ️  No args were given using develop branch"
    set args[1] develop
  end

  echo "Starting XINGBOX deploy of branch $args[1] 🚀"
  xing x b --branch
end
