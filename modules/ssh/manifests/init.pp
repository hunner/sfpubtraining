class ssh {
  package { 'sshd':
    ensure => present,
    name   => 'openssh-server',
  }
  file { 'sshd_config':
    path    => '/etc/ssh/sshd_config',
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    source  => 'puppet:///modules/ssh/sshd_config',
    require => Package['sshd'],
  }
  service { 'sshd':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    subscribe  => File['sshd_config'],
  }
}
