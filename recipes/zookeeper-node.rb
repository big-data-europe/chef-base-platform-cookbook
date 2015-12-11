#
# Cookbook Name:: bde-cluster
# Recipe:: zookeeper-node
#

data_bag_zookeeper = data_bag_item('config', 'zookeeper')
node.default['zookeeper-cluster']['config']['instance_name'] = node["fqdn"]
node.default['zookeeper-cluster']['config']['ensemble'] = data_bag_zookeeper['production']
include_recipe 'zookeeper-cluster::default'
