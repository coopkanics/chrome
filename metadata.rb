name             'chrome'
maintainer       'Rally Software Development Corp'
maintainer_email 'thefellowship@rallydev.com'
license          'MIT'
description      'Installs/Configures chrome'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

recipe 'chrome::default', 'Installs the chrome browser'

supports 'ubuntu'

depends 'yum'
depends 'apt'
