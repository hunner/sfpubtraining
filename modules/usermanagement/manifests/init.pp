class usermanagement {
  file { $usermanagement::params::home:
    ensure => directory,
    owner  => "root",
    group  => "root",
    mode   => "0755",
  }
}
