function kingbox_connect
  set -gx pod (xingboxctl kc $XB_NAME get pods -l 'xingbox.xing.io/app=hallo-matcher' | grep  hallo-matcher | awk '{print $1}')
  _blue_arrow "Connecting to hallo-matcher ($pod) of xingbox $XB_NAME"
  xingboxctl kc $XB_NAME exec -it $pod bash
end
