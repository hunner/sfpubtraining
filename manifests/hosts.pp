resources { 'host':
  purge => true,
}
host { 'localhost.localdomain':
  ensure       => 'present',
  target       => '/etc/hosts',
  host_aliases => ['localhost'],
  ip           => '127.0.0.1',
}
host { 'localhost6.localdomain6':
  ensure       => 'present',
  target       => '/etc/hosts',
  host_aliases => ['localhost6'],
  ip           => '::1',
}
