exec { "touch /tmp/foo":
  path    => "/bin",
  creates => ["/tmp/bar", "/tmp/foo"],
}
