class bluetooth::disable {
  package { 'bluez-libs':
    ensure  => absent,
    require => Package['bluez-utils'],
  }

  package { 'bluez-utils':
    ensure => absent,
  }

  service { 'hidd':
    ensure  => stopped,
    enable  => false,
    before => Package['bluez-utils'],
    hasstatus  => true,
    hasrestart => true,
    status     => 'source /etc/init.d/functions && status hidd',
  }
}
