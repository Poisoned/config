function xb_recreate
  _blue_arrow 'Recreate Xingbox'
  _yellow_arrow 'Recreating...'
  http post \
    https://xingbox-manager.xing.io/api/xingboxes/megaloh-christoph-hugo/recreate \
    api-key:$XB_API_KEY -b
  http get \
    https://xingbox-manager.xing.io/api/xingboxes/megaloh-christoph-hugo/state \
    api-key:$XB_API_KEY -b
end
