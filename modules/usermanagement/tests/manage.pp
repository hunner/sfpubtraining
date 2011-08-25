include usermanagement
usermanagement::manage { "hunner":
  ensure => absent,
  group  => "hunner",
}
usermanagement::manage { "elvis":
  ensure => absent,
  group => "elvis",
}
