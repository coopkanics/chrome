#
# Cookbook Name:: chrome
# Recipe:: default
#
# Copyright (C) 2013 Rally Software Development Corp
# 
# All rights reserved - Do Not Redistribute
#
include_recipe 'yum-rally::rally'
include_recipe 'yum-rally::chrome'

package 'google-chrome-stable'
package 'chromedriver'