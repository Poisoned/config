function dma
  set args $argv
  if not set -q args[1]
    echo "No args were given, set default to active"
    set args[1] default
  end

  echo "Set active docker machine to $args[1]"
  eval (docker-machine env $args[1])
end
