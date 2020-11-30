function replace
  if [ -z $argv ] then
    set args $argv

    set old $args[1]
    set new $args[2]
    set file $args[3]

    echo "Replacing $old with $new in $file"
    sed -i '' 's/$old/$new/g' $file
  end
end
