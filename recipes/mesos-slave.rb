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
node.default['mesos']['slave']['flags']['master'] = zk_string 

include_recipe 'mesos::slave'