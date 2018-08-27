
wget -qO- https://data.cityofchicago.org/api/views/ijzp-q8t2/rows.csv?accessType=DOWNLOAD | kafka-console-producer.sh --broker-list localhost:9092 --topic crime_topic

