case $operatingsystem {
  'rhel':    { $content = "Give us all your money so you can have our logo!" }
  'centos':  { $content = "No licensing fees here (or support contracts)." }
  'ubuntu':  { $content = "The Mickey Mouse of the linux world." }
  'freebsd': { $content = "Does anyone still use this thing?" }
  'arch':    { $content = "One distro to rule them all" }
  'gentoo':  { $content = "Ricer. 'Nuf said." }
  default:   { $content = undef }
}


file { '/tmp/os':
  content => "${content}\n",
  ensure  => file,
}
