notify { "one": 
  before => Notify["two"],
}
notify { "two": }
