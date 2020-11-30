function test_hf_backend
  echo 'Starting hallofreelancer backend tests...'
  cd ~/Homestead/
  vagrant ssh -c 'cd /home/vagrant/code/hffm-backend && composer test'
  cd -
end
