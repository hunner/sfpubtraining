file { '/etc/motd':
  ensure  => present,
  content => template('/etc/puppetlabs/puppet/templates/motd.erb'),
}
