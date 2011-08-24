class bluetooth($disable=false) {
  $enable = ! $disable

  if $enable {
    Package['bluez-libs'] -> Package['bluez-utils'] -> Service['hidd']
  } else {
    Package['bluez-libs'] <- Package['bluez-utils'] <- Service['hidd']
  }
  package { ["bluez-libs","bluez-utils"]:
    ensure => $enable ? {
      true  => 'present',
      false => 'absent',
    },
  }
  service { "hidd":
    ensure     => $enable ? {
      true  => 'running',
      false => 'stopped',
    },
    enable     => $enable,
    hasstatus  => true,
    hasrestart => true,
    status     => 'source /etc/init.d/functions && status hidd',
  }
}
