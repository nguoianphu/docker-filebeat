#!/bin/bash

set -xe

# If user don't provide any command
# Run filebeat
if [[ "$1" == "" ]]; then
     exec filebeat -e -c /filebeat.yml -d "publish"
else
    # Else allow the user to run arbitrarily commands like bash
    exec "$@"
fi
