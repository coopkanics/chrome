#
# Cookbook Name:: chrome
# Recipe:: default
#
# Copyright (c) Rally Software Development Corp. 2013 (see https://github.com/RallySoftware-cookbooks/chrome)

include_recipe "chrome::chromedriver"
include_recipe "chrome::chrome"
