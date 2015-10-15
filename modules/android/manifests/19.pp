# Public: Install android version 19
# shell to it.
#
# Examples
#
#   include android::19
class android::19($ensure = present, $options = ['platform', 'add_on']) {
  android::version { '19':
    ensure  => $ensure,
    options => $options,
  }
}
