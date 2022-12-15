create database if not exists testdb;
use testdb;
create external table if not exists company (
  cid int,
  cname string,
  clocation string
)
row format delimited
fields terminated by ','
lines terminated by '\n'
stored as textfile location 'hdfs://namenode:8020/user/hive/warehouse/testdb.db/company';
