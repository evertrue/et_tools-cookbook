#
# Cookbook Name:: et_tools
# Recipe:: default
#
# Copyright (C) 2013 EverTrue, Inc.
# 
# All rights reserved - Do Not Redistribute
#

node['tools']['packages'].each do |pkg|
  package pkg
end

include_recipe "et_tools::vim"
