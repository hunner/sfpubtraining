node default {
  $location = hiera("location")
  $ntp_servers = hiera_array("ntp_servers")
  hiera_include("classes")
  notice("This is a notice")
  notify {"hi":}

  include motd
  include sudoers
  include ssh
  include bluetooth
}

node 'second.localdomain' {
  notify { "This is the second VM": }
  include motd
  include ssh
  include usermanagement
  usermanagement::manage { "hunner":
    group => "hunner",
  }
}
