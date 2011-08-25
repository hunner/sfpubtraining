include usermanagement
usermanagement::manage { "hunner":
  ensure => present,
  group  => "hunner",
}
usermanagement::manage { "elvis":
  ensure => present,
  group => "elvis",
}
