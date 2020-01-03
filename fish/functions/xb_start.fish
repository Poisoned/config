function xb_start
  _blue_arrow 'Start Xingbox'
  _yellow_arrow 'Starting...'
  http put \
    https://xingbox-manager.xing.io/api/xingboxes/megaloh-christoph-hugo/start \
    api-key:$XB_API_KEY -b
  http get \
    https://xingbox-manager.xing.io/api/xingboxes/megaloh-christoph-hugo/state \
    api-key:$XB_API_KEY -b
end
