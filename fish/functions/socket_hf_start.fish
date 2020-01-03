function socket_hf_start
  echo 'Starting hallofreelancer socket services...'
  cd ~/Homestead/
  vagrant ssh -c "pkill -f SCREEN;";
  vagrant ssh -c "screen -dmS node; screen -S node -X stuff 'cd /home/vagrant/code/hffm-socket-server; npm start\n';";
  cd -
end
