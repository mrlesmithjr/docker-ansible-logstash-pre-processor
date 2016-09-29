#!/bin/bash

ansible-playbook -i "localhost," -c local \
  --extra-vars "redis_server=$REDIS_SERVER" \
  /config_logstash.yml

exec supervisord -n
