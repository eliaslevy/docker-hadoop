#/bin/sh

yarn-daemon.sh --config $HADOOP_CONF_DIR start resourcemanager

tail -Fn +0 /hadoop/logs/yarn-*-resourcemanager-*.out &

wait `cat /tmp/yarn-*-resourcemanager.pid`

sleep 5