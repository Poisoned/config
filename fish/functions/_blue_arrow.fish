function _blue_arrow
    set_color blue -o; printf "==> "
    set_color white -o; printf "$argv\n"
    set_color normal
end
