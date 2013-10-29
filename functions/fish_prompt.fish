set fish_git_dirty_color red
set fish_git_not_dirty_color red

function parse_git_branch
  set -l branch (git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/\1/')
  set -l git_diff (git diff)

  if test -n "$git_diff"
    echo (set_color $fish_git_dirty_color)$branch(set_color red)
  else
    echo (set_color $fish_git_not_dirty_color)$branch(set_color red)
  end
end

function fish_prompt
  if test -d .git
    printf '%s%s %s[%s]%s (%s) %s$ ' (set_color green) (whoami) (set_color blue) (prompt_pwd) (set_color red) (parse_git_branch) (set_color normal)
  else
    printf '%s%s %s%s%s$ ' (set_color green) (whoami) (set_color blue) (prompt_pwd) (set_color normal)
  end
end
