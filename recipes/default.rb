# Exit on Windows platforms
return if node['platform'] == 'windows'

# Install PHPUnit using Composer cookbook LWRP
composer_package "PHPUnit" do
  action [:create, :update]
  install_path "/opt/composer-libraries"
  packages ({node['phpunit']['composer_package'] => node['phpunit']['composer_version']})
  config ({"bin-dir" => node['phpunit']['bin_dir']})
  group "root"
end
