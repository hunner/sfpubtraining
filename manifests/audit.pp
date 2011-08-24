file { "/etc/vhosts":
  recurse => true,
  audit   => ["content", "owner"],
}
