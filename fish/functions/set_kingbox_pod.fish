function set_kingbox_pod
  _blue_arrow "Setting podname for app hallo-matcher of xingbox $XB_NAME"
  set -gx POD (xingboxctl kc $XB_NAME get pods -l 'xingbox.xing.io/app=hallo-matcher' | grep  hallo-matcher | awk '{print $1}')
  printf $POD
end
