function start_hallofreelancer_frontend
  echo 'Starting hallofreelancer frontend...'
  cd ~/Work/hffm-frontend/
  pkill -f webpack.js;
  yarn run watch&
end
