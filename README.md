# bde-cluster-cookbook

This cookbook wraps HDFS, Zookeeper and Mesos cookbooks and provides information about how to deploy BDE cluster.

## Supported Platforms

Ubuntu 14.04

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['hadoop']['core_site']['fs.defaultFS']</tt></td>
    <td>URI</td>
    <td>Points to namenode, e.g. hdfs://node102.local</td>
    <td><tt>hdfs://node102.local</tt></td>
  </tr>
</table>

## Usage

### bde-cluster::hdfs-namenode

Include `bde-cluster::hdfs-namenode` in your namenode `run_list`:

```json
{
  "run_list": [
    "recipe[bde-cluster::hdfs-namenode]"
  ]
}
```

### bde-cluster::hdfs-datanode

Include `bde-cluster::hdfs-datanode` in your datanode `run_list`:

```json
{
  "run_list": [
    "recipe[bde-cluster::hdfs-datanode]"
  ]
}
```

## License and Authors

Author:: Ivan Ermilov (<earthquakesan@gmail.com>)
