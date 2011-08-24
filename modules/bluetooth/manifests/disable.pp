class bluetooth::disable inherits bluetooth {
  Package['bluez-libs'] {
    ensure  => absent,
    require => Package['bluez-utils'],
    before  => undef,
  }
  Package['bluez-utils'] {
    ensure => absent,
    before => undef,
  }
  Service['hidd'] {
    ensure  => stopped,
    enable  => false,
    before => Package['bluez-utils'],
  }
}
