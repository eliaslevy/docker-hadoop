#!/bin/sh

# Create the config file.
sed -e "s|\${YARN_NM_MEMORY}|${YARN_NM_MEMORY}|g" \
    -e "s|\${YARN_NM_CPUS}|${YARN_NM_CPUS}|g" \
    -e "s|\${YARN_RM_HOSTNAME}|${YARN_RM_HOSTNAME}|g" \
    -i /hadoop/etc/hadoop/yarn-site.xml

export YARN_CONF_DIR=/hadoop/etc/hadoop
export YARN_LOG_DIR=/hadoop/logs
export YARN_LOGFILE=yarn-nodemanager.log
export YARN_ROOT_LOGGER=${YARN_ROOT_LOGGER:-INFO,RFA,console}

exec "$@"