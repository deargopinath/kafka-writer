echo Stopping Kafka ...
wmic process where (commandline like "%%kafka.Kafka%%" and not name="wmic.exe") delete

echo Stopping Zookeeper ...
wmic process where (commandline like "%%zookeeper%%" and not name="wmic.exe") delete

echo Deleting old log files...
rmdir /s /q C:\zookeeper\logs
rmdir /s /q C:\confluent41\kafka-logs

cd C:\zookeeper\bin
start cmd.exe /MIN /C C:\zookeeper\bin\zkServer.cmd
echo started zookeeper. will wait for 5 seconds before starting kafka
timeout 5
cd C:\confluent41\bin\windows
call C:\confluent41\bin\windows\kafka-server-start.bat C:\confluent41\etc\kafka\server.properties

