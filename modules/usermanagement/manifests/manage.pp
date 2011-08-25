define usermanagement::manage (
  $ensure,
  $homedir = "default",
  $group = "users"
) {

  if $name == 'root' {
    fail("You can't manage root with usermanagement::manage")
  }

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
  }

  user { $name:
    ensure => $ensure,
    gid    => $group,
  }

  if ! defined(Group[$group]) {
    if $ensure == "present" {
      group { $group:
        ensure => present,
      }
    }
  }
}

