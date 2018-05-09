function tschüss
  cd ~/Work/coaches-app
  echo 'Stopping docker containers...'
  docker-compose stop
  echo 'Stopping docker machine...'
  docker-machine stop
end
