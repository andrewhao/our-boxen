class people::andrewhao::applications {
  include iterm2::stable
  include iterm2::colors::arthur
  include iterm2::colors::saturn
  include iterm2::colors::solarized_light
  include iterm2::colors::solarized_dark
  include iterm2::colors::zenburn
  include dropbox
  include virtualbox
  include vagrant
  include chrome
  include silver_searcher
  include vim
  include emacs
  include tig
  include docker
  include mosh
  include wget
  include java
  include sublime_text
  include swig
  include pcre
  include graphviz
  include postgresql
  include tmux
  include phantomjs
  include transmission
  include heroku
  include firefox
  include clojure
}

# Install PhantomJS version 1.9.8
phantomjs::version { '1.9.8': }
phantomjs::global { '1.9.8': }
