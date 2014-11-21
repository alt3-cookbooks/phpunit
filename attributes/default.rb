
# Composer required install path to prevent installing directly under /
default['composer']['install_path'] = "/opt/composer-libraries";
default['composer']['bin_dir']      = "/usr/local/bin"

# PHP CodeSniffer
default['phpunit']['package'] = 'phpunit/phpunit'
default['phpunit']['version'] = '4.3.*'
