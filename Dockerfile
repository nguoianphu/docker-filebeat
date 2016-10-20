# Dockerfile for Filebeat

# Build with:
# docker build -t "filebeat" .

# Alpine OS 3.4
# http://dl-cdn.alpinelinux.org/alpine/v3.4/community/x86_64/
FROM alpine:3.4

MAINTAINER Tuan Vo <vohungtuan@gmail.com>

###############################################################################
#                                INSTALLATION
###############################################################################

ENV FILEBEAT_VERSION=1.3.1

RUN set -x \
 && apk add --update bash \
                     curl \
                     tar \
 && curl -L -O https://download.elastic.co/beats/filebeat/filebeat-${FILEBEAT_VERSION}-x86_64.tar.gz \
 && tar xzvf filebeat-${FILEBEAT_VERSION}-x86_64.tar.gz -C / --strip-components=1 \
 && rm -rf filebeat-${FILEBEAT_VERSION}-x86_64.tar.gz
 && apk del curl \
            tar \
 && rm -rf /var/cache/apk/*
 # && curl -XPUT 'http://localhost:9200/_template/filebeat?pretty' -d@filebeat.template.json
 
###############################################################################
#                                   START
############################################################################### 

COPY docker-entrypoint.sh /
RUN chmod +x docker-entrypoint.sh filebeat \
 && ln -s /filebeat /bin/filebeat

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD [ "filebeat", "-c", "filebeat.yml", "-d", "publish" ]
# CMD [ "filebeat", "-e", "-c", "filebeat.yml" ]
