#
# Cookbook Name:: bde-cluster
# Recipe:: hdfs-namenode
#

node.default['hadoop']['hdfs_site']['dfs.name.dir'] = 'file:///hadoop/hadoop-hdfs/dfs/name'

include_recipe 'bde-cluster::default'
include_recipe 'hadoop::default'
include_recipe 'hadoop::hadoop_hdfs_namenode'

ruby_block 'initaction-hdfs-namenode-format' do
  block do
    resources('execute[hdfs-namenode-format]').run_action(:run)
  end
end

ruby_block 'service-hadoop-hdfs-namenode-start-and-enable' do
  block do
    %w(enable start).each do |action|
      resources('service[hadoop-hdfs-namenode]').run_action(action.to_sym)
    end
  end
end
