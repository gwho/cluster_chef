name 'hbase_master'
description 'runs a zookeeper and hbase-master in fully-distributed mode. There should be exactly one of these per cluster.'

run_list %w[
  hadoop_cluster::ec2_conf
  hadoop_cluster::hadoop_webfront
  hadoop_cluster::system_internals
  zookeeper::zookeeper_server
  hbase::hbase_master
]
