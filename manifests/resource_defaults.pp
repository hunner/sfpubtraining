File {
  mode => '0644',
}

file {
  '/tmp/defaults':
    mode   => '0641',
    ensure => directory,;
  '/tmp/defaults/hello':
    content => "testing\n",;
  '/tmp/defaults/goodbye':
    content => "testing\n",;
}
