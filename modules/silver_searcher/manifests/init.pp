# Public: Installs the_silver_searcher via homebrew
#
# Examples
#
#   include silver_searcher
class silver_searcher {
  include homebrew

  package { 'the_silver_searcher': }
}
