#$username = 'root'
$username = 'elvis'

$homedir = $username ? {
  'root'  => '/root',
  default => "/home/${username}",
}

$sourcedir = '/etc/puppetlabs/puppet/files'

File {
  owner => $username,
  group => $username,
  mode  => '0644',
}

file { "${homedir}/.vim":
  ensure  => directory,
  source  => "${sourcedir}/vim",
  recurse => true,
}

file { "${homedir}/.vimrc":
  source => "${sourcedir}/vimrc",
}

file { "${homedir}/.ssh":
  ensure => directory,
  mode   => '0700',
}

case $username {
  'root': {
    file { "${homedir}/.ssh/authorized_keys":
      ensure => absent,
    }
  }
  default: {
    file { "${homedir}/.ssh/authorized_keys":
      ensure  => present,
      source  => "${sourcedir}/authorized_keys.${username}",
      replace => false,
    }
  }
}
