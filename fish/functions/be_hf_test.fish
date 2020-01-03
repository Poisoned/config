function be_hf_test
  echo 'Testing hallofreelancer backend...'
  cd ~/Homestead/
  vagrant ssh -c 'cd /home/vagrant/code/hffm-backend && composer test'
  cd -
end
