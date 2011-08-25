class motd {
  file { '/etc/motd':
    ensure  => present,
    content => template('motd/motd.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }
}
