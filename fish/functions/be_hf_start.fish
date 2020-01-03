function be_hf_start
  echo 'Starting hallofreelancer backend...'
  cd ~/Homestead/
  vagrant ssh -c 'cd /home/vagrant/code/hffm-backend && bash start.sh'
  cd -
end
