module Puppet::Parser::Functions
  newfunction(:concat, :type => :rvalue) do |args|
    args.flatten
  end
end
