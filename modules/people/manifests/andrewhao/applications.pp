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
  include macvim
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
  #include transmission
  include heroku
  include firefox
  include clojure
  include zsh
  include screenhero
  include atom
  include dropbox
  include mailbox
  include redis
  include gdal
  include python
  #include postgis
}

class gdal {
  package { 'gdal':
    ensure => installed,
  }
}

# Install PhantomJS version 1.9.8
phantomjs::version { '1.9.8': }
phantomjs::global { '1.9.8': }

python::pip { 'awscli': }

ruby_gem { 'bundler for all rubies':
  gem          => 'bundler',
  version      => '~> 1.0',
  ruby_version => '*'
}
