class people::andrewhao::applications {
  include iterm2::stable
  include iterm2::colors::arthur
  include iterm2::colors::saturn
  include iterm2::colors::solarized_light
  include iterm2::colors::solarized_dark
  include iterm2::colors::zenburn
  include dropbox
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
  include heroku
  include firefox
  include clojure
  include zsh
  include screenhero
  include atom
  include dropbox
  include mailbox
  include redis
  include python
  include ahaobrews
  include ahaocaskbrews
}

# Warning!
#
# It's hard to install virtualbox via caskroom+boxen rightnow.
# So we have to manually call `boxen cask install virtualbox`
class ahaocaskbrews {
  include brewcask

  $cask_packages = [
    'github-desktop',
    'virtualbox',
    'transmission',
    'licecap'
  ]

  ## Install the cask packages.
  ## You might need some sort of sudo hack. Tries to symlink stuff to
  ## non-writable dir
  package { $cask_packages:
    ensure           => present,
    provider         => 'brewcask'
  }
}

# My custom Homebrew packages.
class ahaobrews {
  $packages = [
    'gdal',
    'reattach-to-user-namespace',
    'gh',
    'jmeter',
    'ssh-copy-id',
    'duck',
    'pstree',
    'htop',
    'ngrok',
    'plantuml',
    'keybase',
    'gpg',
    'ctags',
    'coreutils',
    'highlight',
    'elixir',
    'heroku',
    'homebrew/dupes/rsync',
    'postgis'
  ]
  package { $packages:
    ensure   => "installed"
  }
}



# Install PhantomJS version 1.9.8
phantomjs::version { '1.9.7': }
phantomjs::version { '1.9.8': }
phantomjs::global { '1.9.8': }

python::pip { 'awscli': }
python::pip { 'ansible': }


