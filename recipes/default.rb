#
# Cookbook Name:: chrome
# Recipe:: default
#
# Copyright (c) Rally Software Development Corp. 2013 (see https://github.com/RallySoftware-cookbooks/chrome)

if node['platform_family'] == 'rhel'
  yum_key 'google-chrome-key.pub' do
    url 'https://dl-ssl.google.com/linux/linux_signing_key.pub'
    action :add
  end

  yum_repository 'google-chrome' do
    name 'google-chrome'
    description 'Google Chrome'
    url 'http://dl.google.com/linux/chrome/rpm/stable/x86_64'
    key 'google-chrome-key.pub'
    action :add
  end
elsif node['platform_family'] == 'debian'
  include_recipe 'apt'

  apt_repository 'google-chrome' do
      uri 'http://dl.google.com/linux/chrome/deb/'
      distribution 'stable'
      components ['main']
      key 'https://dl-ssl.google.com/linux/linux_signing_key.pub'
      action :add
  end
end

package "google-chrome-#{node['chrome']['version']}"
