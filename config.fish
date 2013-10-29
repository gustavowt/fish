set -x PATH /usr/local/bin $PATH
set -x PATH /usr/local/heroku/bin $PATH

set -U EDITOR mvim
set RUBY_GC_MALLOC_LIMIT 60000000
set RUBY_FREE_MIN 200000

#rbenv
set -x PATH $HOME/.rbenv/bin $PATH
set -x PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1
