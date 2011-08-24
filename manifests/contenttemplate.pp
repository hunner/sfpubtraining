define vhost(
  $port,
  $path = '/etc/httpd/conf.d',
  $content = '/etc/puppetlabs/puppet/templates/vhost.erb') {
  file {"${path}/${name}.conf":
    ensure  => present,
    owner   => 'apache',
    group   => 'apache',
    mode    => '0644',
    # assume that $port is used inside template
    content => template($content),
  }
}
