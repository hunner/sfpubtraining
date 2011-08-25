define usermanagement::manage (
  $ensure,
  $homedir = "default",
  $group = "users"
) {
  if $homedir == "default" {
    $homedir_real = "/home/${name}"
  } else {
    $homedir_real = $homedir
  }

  file { $homedir_real:
    ensure  => $ensure ? {
      "present" => "directory",
      "absent"  => "absent",
    },
    recurse => true,
    owner   => $name,
    group   => $group,
    require => Class["usermanagement"],
  }

  user { $name:
    ensure => $ensure,
    gid    => $group,
  }

  if ! defined(Group['users']) {
    if $ensure == "present" {
      group { "users":
        ensure => present,
      }
    }
  }
}

