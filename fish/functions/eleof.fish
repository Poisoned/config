function eleof
  echo 'Counting files with emtpy line at eof...'

  set php_files ( find . -name '*.php' )
  set php_count ( count $php_files )

  for php_file in $php_files
    if [ -z (tail -c 1 $php_file) ]
      set empty_line (math $empty_line + 1)
    else
      set wo_empty_line (math $wo_empty_line + 1)
    end
  end

  set empty_line_perc ( math "($empty_line / $php_count) * 100" )
  set wo_empty_line_perc ( math "($wo_empty_line / $php_count) * 100" )

  echo '###############################################'
  echo 'RESULTS'
  echo "Scanned $php_count files"
  echo '-----------------------------------------------'
  echo "Files with empty line: $empty_line"
  echo "This are $empty_line_perc percent of all files"
  echo '-----------------------------------------------'
  echo "Files without empty line: $wo_empty_line"
  echo "This are $wo_empty_line_perc percent of all files"
  echo '###############################################'
end
