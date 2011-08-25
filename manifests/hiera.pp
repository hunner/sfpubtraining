$location = "here"
$foo = hiera("foo")
notify { "Foo hiera":
  message => "Value is ${foo}",
}
