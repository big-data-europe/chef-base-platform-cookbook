#
# Cookbook Name:: bde-cluster
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

data_bag_zookeeper = data_bag_item('config', 'zookeeper')
zk_string = "zk://#{data_bag_zookeeper['production'].join(':2181,')}:2181/mesos"
node.default['mesos']['master']['flags']['cluster'] = "BDECluster" 
node.default['mesos']['master']['flags']['zk'] = zk_string 
node.default['mesos']['master']['flags']['quorum'] = "1"
node.default['mesos']['master']['flags']['hostname'] = node['fqdn'] 
node.default['mesos']['master']['flags']['ip'] = node['ipaddress'] 

include_recipe 'mesos::master'
