function xb_status
  _blue_arrow 'Xingboxes'
  http get \
  https://xingbox-manager.xing.io/api/xingboxes/megaloh-christoph-hugo/state \
  api-key:$XB_API_KEY -b
end
