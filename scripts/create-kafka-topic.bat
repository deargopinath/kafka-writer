cd c:\confluent41\bin\windows
call c:\confluent41\bin\windows\kafka-topics.bat --zookeeper localhost:2181 --create --topic trades --partitions 1 --replication-factor 1
call c:\confluent41\bin\windows\kafka-topics.bat --zookeeper localhost:2181 --list
timeout 2

