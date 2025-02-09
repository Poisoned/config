set -gx fish_color_git_clean green
set -gx fish_color_git_staged yellow
set -gx fish_color_git_dirty blue

set -gx fish_color_git_added green
set -gx fish_color_git_modified blue
set -gx fish_color_git_renamed magenta
set -gx fish_color_git_copied magenta
set -gx fish_color_git_deleted red
set -gx fish_color_git_untracked yellow
set -gx fish_color_git_unmerged red
set -gx fish_color_git_dirty_sign (set_color red)

set -gx fish_prompt_git_status_added '✚'
set -gx fish_prompt_git_status_modified '﹡'
set -gx fish_prompt_git_status_renamed '➪'
set -gx fish_prompt_git_status_copied '⇒'
set -gx fish_prompt_git_status_deleted '✖'
set -gx fish_prompt_git_status_untracked '﹖'
set -gx fish_prompt_git_status_unmerged '!'

set -gx fish_prompt_git_status_order added modified renamed copied deleted untracked unmerged

function clean_git_prompt --description 'Write out the git prompt'
  set -l branch (git rev-parse --abbrev-ref HEAD ^/dev/null)
  if test -z $branch
    return
  end

  echo -n '|'

  set -l index (git status --porcelain ^/dev/null|cut -c 1-2|sort -u)

  if test -z "$index"
    set_color $fish_color_git_clean
    echo -n $branch'✓'
    set_color normal
    return
  end

  set -l gs
  set -l staged

  for i in $index
    if echo $i | grep '^[AMRCD]' >/dev/null
      set staged 1
    end

    switch $i
      case 'A '               ; set gs $gs added
      case 'M ' ' M'          ; set gs $gs modified
      case 'R '               ; set gs $gs renamed
      case 'C '               ; set gs $gs copied
      case 'D ' ' D'          ; set gs $gs deleted
      case '\?\?'             ; set gs $gs untracked
      case 'U*' '*U' 'DD' 'AA'; set gs $gs unmerged
    end
  end

  if set -q staged[1]
    set_color $fish_color_git_staged
  else
    set_color $fish_color_git_dirty
  end

  echo -n $branch$fish_color_git_dirty_sign' ✗'

  for i in $fish_prompt_git_status_order
    if contains $i in $gs
      set -l color_name fish_color_git_$i
      set -l status_name fish_prompt_git_status_$i

      set_color $$color_name
      echo -n $$status_name
    end
  end

  set_color normal
end
