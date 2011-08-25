$one = ['one','two']

$package_hash = hiera_hash("packages")
create_resources("package",$package_hash)
