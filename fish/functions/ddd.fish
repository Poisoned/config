function ddd
  _blue_arrow 'Stopping all docker containers and start over in current directory'
  docker stop (docker ps -aq)
  z traefik; docker-compose up -d
  z $argv; docker-compose up -d
end
