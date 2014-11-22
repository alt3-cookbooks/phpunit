# Exit on Windows platforms
return if node['platform'] == 'windows'

# Composer install PHPUnit
composer_package 'PHPUnit' do
    install_path node['phpunit']['install_path']
    packages ({node['phpunit']['package'] => node['phpunit']['version']})
    config ({
        "bin-dir" => node['phpunit']['bin_dir']
        })
    group "root"
    action [:create, :update]
end
