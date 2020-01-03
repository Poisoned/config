function fe_hf_start
  echo 'Starting hallofreelancer frontend...'
  cd ~/Work/hffm-frontend/
  pkill -f webpack.js;
  npm start
end
