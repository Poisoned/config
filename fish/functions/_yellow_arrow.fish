function _yellow_arrow
    set_color yellow -o; printf "==> "
    set_color white -o; printf "$argv\n"
    set_color normal
end
