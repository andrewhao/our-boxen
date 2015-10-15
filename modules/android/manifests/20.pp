# Public: Install android version 20
# shell to it.
#
# Examples
#
#   include android::20
class android::20($ensure = present, $options = ['platform', 'add_on']) {
  android::version { '20':
    ensure  => $ensure,
    options => $options,
  }
}
