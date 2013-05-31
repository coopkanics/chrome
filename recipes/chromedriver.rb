#
# Cookbook Name:: chrome
# Recipe:: chromedriver
#
# Copyright (c) Rally Software Development Corp. 2013 (see https://github.com/RallySoftware-cookbooks/chrome)

include_recipe "ark"

ark "chromedriver" do
  url node["chromedriver"]["source_url"]
  version node["chromedriver"]["version"]
  owner node["chromedriver"]["owner"]
  group node["chromedriver"]["group"]
  path node["chromedriver"]["path"]
  file "chromedriver"
  action :cherry_pick
end
