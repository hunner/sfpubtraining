ENV.each do |key,value|
  Facter.add(key) do
    setcode do
      value
    end
  end
end
