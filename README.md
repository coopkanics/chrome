[![Build Status](https://travis-ci.org/RallySoftware-cookbooks/chrome.png?branch=master)](https://travis-ci.org/RallySoftware-cookbooks/chrome)

# Chrome cookbook
Cookbook for installing chrome and chromedriver

## About
Contains recipes to install chromedriver and chrome browser.

## Supports
The chrome cookbook uses both the YUM and APT google repos to fetch the current stable release of chrome. However, the current
stable version (28) is not supported in Centos 6.x. Therefore, we do not provide test kitchen tests against the YUM resource.
We do test that the cookbook works with opscode-ubuntu-12.04 vbox instance. 

The chromedriver cookbook is operating system independent.

## Attributes
 
### Chrome -- defaults
```ruby
default['chrome']['version'] = 'stable'
```
 
### Chromedriver -- defaults
```ruby
default['chromedriver']['version'] = 'linux64_26.0.1383.0'
default['chromedriver']['archive_name']  = "chromedriver_#{node['chromedriver']['version']}.zip"
default['chromedriver']['source_url']  = "https://chromedriver.googlecode.com/files/#{node['chromedriver']['archive_name']}"
default['chromedriver']['path'] = '/usr/bin'
default['chromedriver']['owner'] = 'root'
default['chromedriver']['group'] = 'root'
default['chromedriver']['mode'] = 755
```

## Tests
Test coverage is provided for both chrome and chromedriver through chefspec and serverspec tests.

## Dependencies
This cookbook depends on the following cookbooks

* yum cookbook (https://github.com/opscode-cookbooks/yum) *
* apt cookbook (https://github.com/opscode-cookbooks/apt) *
* ark (http://community.opscode.com/cookbooks/ark). *

## License
Copyright (c) Rally Software Development Corp. 2013
Distributed under the MIT License.
