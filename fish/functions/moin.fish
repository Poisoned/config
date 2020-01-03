function moin
  _blue_arrow 'Starting docker-machine...'
  docker-machine start

  _blue_arrow 'Evaluate docker env...'
  eval (docker-machine env)
  set -gx DOCKER_IP (docker-machine ip)

  _blue_arrow 'Starting docker containers for existing services...'
  docker-compose up -d
end
