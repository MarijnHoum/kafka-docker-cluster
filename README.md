Kakfa Cluster with Docker
-------------------------

Cluster contains:
* 3 kafka nodes that are broker+controller. 
* 1 kafka node that is only broker. 
* Kafka UI interface. 

# Deployment
```shell
$ docker-compose up -d 
```

# usage

From outside the cluster you should use port 9094, 9192, 9292 to contact different brokers. 
Connecting to the first broker will make your client connect to all brokers available in the 
cluster.
```shell
$ kcat -L -b localhost:9094  # List topics. 
```

From inside the cluster network you can use the standard 9092 and the names of brokers. 
```shell
$ kcat -L -b kafka0:9092,kafka1:9092,kafka2:9092  # Connect to any and list topics. 
```

Inside of the kafka nodes you can use the clientes that come with Kafka:
```shell
/opt/bitnami/kafka/bin/kafka-topics.sh describe --bootstrap-server localhost:9092 --describe
```
