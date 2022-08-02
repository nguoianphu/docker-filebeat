# Docker Filebeat

## Lightweight Shipper for Log Data

Filebeat is the next-generation Logstash Forwarder designed to quickly and reliably ship log file data to Logstash or Elasticsearch while only consuming a fraction of the resources. 

Filebeat Docker image on Alpine OS.

[![ci](https://github.com/nguoianphu/docker-filebeat/actions/workflows/docker-image.yml/badge.svg)](https://github.com/nguoianphu/docker-filebeat/actions/workflows/docker-image.yml)

- Filebeat
- OS is Alpine 64bit

# Build and run
    
    docker build -t "filebeat" .
    docker run -d -v /path/to/filebeat.yml:/filebeat.yml --name my-filebeat filebeat
    
## or just run
    
    docker run -d -v /path/to/filebeat.yml:/filebeat.yml --name my-filebeat nguoianphu/docker-filebeat

## Official Docs
    https://www.elastic.co/guide/en/beats/filebeat/current/index.html
    
    
# Docker Filebeat 1.3.x

Go to ```1``` branch at 
