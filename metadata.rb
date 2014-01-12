name             'git_ppa'
maintainer       'pseudomuto'
maintainer_email 'david.muto@gmail.com'
license          'Apache 2.0'
description      'Installs/Configures git from ppa'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))

recipe           'git_ppa', 'Installs the latest stable build of git from ppa'

version          '0.1.2'
supports         'ubuntu'
depends          'apt'
