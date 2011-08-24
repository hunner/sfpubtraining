$content = $operatingsystem ? {
  'centos'  => "No licensing fees here (or support contracts).",
  'ubuntu'  => "The Mickey Mouse of the linux world.",
  'rhel'    => "Give us all your money so you can have our logo!",
  'gentoo'  => "Ricer. 'Nuf said.",
  'arch'    => "One distro to rule them all",
  'freebsd' => "Does anyone still use this thing?",
  default   => "I have no identity",
}


file { '/tmp/os':
  content => "${content}\n",
  ensure  => file,
}
