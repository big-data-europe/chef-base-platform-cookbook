#
# Cookbook Name:: bde-cluster
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

data_bag_zookeeper = data_bag_item('config', 'zookeeper')
node.default['zookeeper-cluster']['config']['instance_name'] = node['ipaddress']
node.default['zookeeper-cluster']['config']['ensemble'] = data_bag_zookeeper['development']
node.default['zookeeper-cluster']['config']['instance_name'] = node["fqdn"]
include_recipe 'zookeeper-cluster::default'
