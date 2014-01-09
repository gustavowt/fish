function to_staging -d "merge given branch on staging"
  gcb $argv

  set_color green; echo "Create temporary branch"; set_color normal
  git checkout -b $argv"_staging"

  set_color red; echo "Rebase with staging"; set_color normal
  git rebase staging

  set_color red; echo "Merge on staging"; set_color normal
  git checkout staging
  git merge  $argv"_staging"

  set_color red; echo "Delete temporary branch"; set_color normal
  git branch -D $argv"_staging"
end

