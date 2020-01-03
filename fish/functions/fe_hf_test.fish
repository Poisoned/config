function fe_hf_test
  echo 'Testing hallofreelancer frontend...'
  cd ~/Work/hffm-frontend/
  pkill -f webpack.js;
  npm test
end
