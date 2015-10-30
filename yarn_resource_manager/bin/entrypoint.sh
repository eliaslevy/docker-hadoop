#!/bin/sh

# Create the config file.
sed -e "s|\${ZOOKEEPER_ADDRESS}|${ZOOKEEPER_ADDRESS:-zookeeper:2181}|g" \
    -e "s|\${ZOOKEEPER_ROOT}|${ZOOKEEPER_ROOT:-/yarn_resource_manager}|g" \
    -i /hadoop/etc/hadoop/yarn-site.xml

exec "$@"