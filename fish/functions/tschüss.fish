function tschüss
  _blue_arrow 'Stopping docker containers...'
  docker-compose stop

  _blue_arrow 'Stopping docker machine...'
  docker-machine stop
end
