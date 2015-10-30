#!/bin/sh

# Create the config file.
sed -e "s|\${ZOOKEEPER_ADDRESS}|${ZOOKEEPER_ADDRESS:-zookeeper:2181}|g" \
    -e "s|\${ZOOKEEPER_ROOT}|${ZOOKEEPER_ROOT:-/yarn_resource_manager}|g" \
    -i /hadoop/etc/hadoop/yarn-site.xml

export YARN_CONF_DIR=/hadoop/etc/hadoop
export YARN_LOG_DIR=/hadoop/logs
export YARN_LOGFILE=yarn-resourcemanager.log
export YARN_ROOT_LOGGER=${YARN_ROOT_LOGGER:-INFO,RFA}

exec "$@"