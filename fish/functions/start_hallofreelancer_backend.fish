function start_hallofreelancer_backend
  echo 'Starting hallofreelancer backend...'
  cd ~/Homestead/
  vagrant ssh -c 'cd /home/vagrant/code/hffm-backend && bash install_dev.sh'
end
