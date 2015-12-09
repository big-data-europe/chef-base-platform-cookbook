node.default['hadoop']['core_site']['fs.defaultFS'] = 'hdfs://node102.local'

include_recipe 'bde-cluster::default'
include_recipe 'hadoop::default'
include_recipe 'hadoop::hadoop_hdfs_datanode'

ruby_block 'service-hadoop-hdfs-datanode-start-and-enable' do
  block do
    %w(enable start).each do |action|
      resources('service[hadoop-hdfs-datanode]').run_action(action.to_sym)
    end
  end
end
