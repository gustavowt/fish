function gcb -d "update master, remove and recreate given branch"
  set_color red; echo "Updating master"; set_color normal
  git checkout master
  git pull

  set_color green; echo "Delete branch $argv"; set_color normal
  git branch -D $argv

  set_color green; echo "Recreate branch $argv"; set_color normal
  git branch $argv origin/$argv

  set_color yellow; echo "Checkout on branch $argv"; set_color normal
  git checkout $argv
end
