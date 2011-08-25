class params {
  $foo = "hi"
}

class usable inherits params {
  notify { "foo is ${foo}": }
}

class foo inherits usable {
  notify { "foo is ${foo}": }
}

include foo
