name             "chrome"
maintainer       "Rally Software Development Corp"
maintainer_email "thefellowship@rallydev.com"
license          "All rights reserved"
description      "Installs/Configures chrome"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.0.0"

recipe 'chrome::chrome', "Installs the chrome browser"
recipe 'chrome::chromedriver', "Installs the chromedriver"
recipe 'chrome::default', "Installs both the chrome browser and chromedriver"

supports 'ubuntu'
supports 'centos'

depends "ark"
depends "yum"
depends "apt"
