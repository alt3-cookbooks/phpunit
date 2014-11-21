# Exit on Windows platforms
return if node['platform'] == 'windows'

# Composer install PHP CodeSniffer
composer_package 'PHP CodeSniffer' do
    install_path node['composer']['install_path']
    packages ({node['phpunit']['package'] => node['phpunit']['version']})
    config ({
        "bin-dir" => node['composer']['bin_dir']
        })
    group "root"
    action [:create, :update]
end
