#!/bin/sh

local ELASTICSEARCH_YML="/opt/elasticsearch/config/elasticsearch.yml"

# load configuration and extra java opts from the volume.

local CUSTOM_YML=/var/lib/elasticsearch/elasticsearch.yml
if [ -f "$CUSTOM_YML" ]; then
  ELASTICSEARCH_YML=$CUSTOM_YML
fi

start() {
	exec /opt/elasticsearch/bin/elasticsearch -Des.config=$ELASTICSEARCH_YML
}

start
