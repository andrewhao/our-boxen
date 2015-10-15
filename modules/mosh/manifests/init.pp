# Public: Install jq via homebrew
#
# Examples
#
#   include mosh
class mosh {
  if $::osfamily == 'Darwin' {
    include homebrew
  }

  package { 'mobile-shell': }
}
