function cmd
  set_color white -o; echo '### System overview ###'
  set_color normal

  spin "parallel ::: docker-machine_ls docker_ps vagrant_st xb_status"
end
