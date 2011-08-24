file { '/tmp/os':
  content => $operatingsystem ? {
    'centos'  => "No licensing fees here (or support contracts).\n",
    'ubuntu'  => "The Mickey Mouse of the linux world.\n",
    'rhel'    => "Give us all your money so you can have our logo!\n",
    'gentoo'  => "Ricer. 'Nuf said.\n",
    'arch'    => "One distro to rule them all\n",
    'freebsd' => "Does anyone still use this thing?\n",
    default   => "I have no identity\n",
  },
  ensure => file,
}
