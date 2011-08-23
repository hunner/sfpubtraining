package { 'sshd':
  ensure => present,
  name   => 'openssh-server',
}
file { '/etc/ssh/sshd_config':
  owner   => 'root',
  group   => 'root',
  mode    => '0600',
  source  => '/etc/puppetlabs/puppet/files/sshd_config',
  require => Package['sshd'],
}
service { 'sshd':
  ensure     => running,
  enable     => true,
  hasstatus  => true,
  hasrestart => true,
  subscribe  => File['/etc/ssh/sshd_config'],
}
