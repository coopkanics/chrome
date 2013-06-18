default['chromedriver']['version'] = 'linux64_26.0.1383.0'
default['chromedriver']['archive_name']  = "chromedriver_#{node['chromedriver']['version']}.zip"
default['chromedriver']['source_url']  = "https://chromedriver.googlecode.com/files/#{node['chromedriver']['archive_name']}"
default['chromedriver']['path'] = '/usr/bin'
default['chromedriver']['owner'] = 'root'
default['chromedriver']['group'] = 'root'
default['chromedriver']['mode'] = 755
