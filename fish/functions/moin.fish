function moin
  cd ~/Work/coaches-app
  echo 'Starting docker-machine...'
  docker-machine start
  echo 'Evaluate docker env...'
  eval (docker-machine env)
  set -gx DOCKER_IP (docker-machine ip)
  echo 'Starting docker containers for existing services...'
  docker-compose start
end
