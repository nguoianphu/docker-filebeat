# Docker Filebeat 1.x

## Lightweight Shipper for Log Data

Filebeat is the next-generation Logstash Forwarder designed to quickly and reliably ship log file data to Logstash or Elasticsearch while only consuming a fraction of the resources. 

Filebeat 1.x Docker image. Alpine OS 3.x.

[![Build Status](https://travis-ci.org/nguoianphu/docker-filebeat.svg?branch=1)](https://travis-ci.org/nguoianphu/docker-filebeat) [![Image size](https://images.microbadger.com/badges/image/nguoianphu/docker-filebeat:1.svg)](https://microbadger.com/images/nguoianphu/docker-filebeat "Get your own image badge on microbadger.com")

- Filebeat 1.3.1
- OS is Alpine 3.4 64bit

# Build and run
    
    docker build -t "filebeat" .
    docker run -d -v /path/to/filebeat.yml:/filebeat.yml --name my-filebeat filebeat
    
## or just run
    
    docker run -d -v /path/to/filebeat.yml:/filebeat.yml --name my-filebeat nguoianphu/docker-filebeat:1

## Official Docs
    https://www.elastic.co/guide/en/beats/filebeat/1.3/index.html