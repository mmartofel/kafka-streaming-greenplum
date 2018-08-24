# kafka-streaming-greenplum
Streaming data to Pivotal Greenplum through Kafka and Pivotal Kafka Connector

ssh -i MOD.pem gpadmin@ec2-35-158-228-50.eu-central-1.compute.amazonaws.com

Pivotal Greenplum Command Center link:

http://ec2-35-158-228-50.eu-central-1.compute.amazonaws.com:28080/
gpmon / changeme

Apache Zeppelin link:

http://ec2-35-158-228-50.eu-central-1.compute.amazonaws.com:8090/
no authentication required

Start Kafka:

./kafka_start.sh

List existing Kafka Topics:

kafka-topics.sh --list --zookeeper localhost:2181

If crime_topic doesn't exist, create it:

kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic crime_topic

Create table as your Greenplum database:

cd crime

psql < create_crime_table.sql

Run gpkafka (connector process)

./rum_gpkafka.sh

Stream data to kafka from the web source:

./web_stream_data.sh

Check progress:
- at psql selecting count from crimes table
- check commits done by gpkafka:
  
  gpkafka check --show-commit-history all crime_cfg.yaml
 
 Run Zeppelin notebooks.






NOTES:

Describe Kafka topic

kafka-topics.sh --describe --zookeeper localhost:2181 --topic crime_topic

Alter number of pertitions for topic:

kafka-topics.sh --alter --zookeeper localhost:2181 --topic crime_topic --partitions 3


