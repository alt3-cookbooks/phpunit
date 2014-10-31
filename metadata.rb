name             'phpunit'
maintainer       'alt3.io'
license          'MIT'
description      'Chef cookbook to install PHPUnit using Composer LWRP'
version          '1.0.0'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))

depends "composer"
supports "ubuntu"
