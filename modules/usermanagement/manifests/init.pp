class usermanagement {
  $home = "/home"
  file { $home:
    ensure => directory,
    owner  => "root",
    group  => "root",
    mode   => "0755",
  }
}
