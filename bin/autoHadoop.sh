#!/bin/bash

cd $HADOOP_HOME
if [[ $1 = '' || $2 != '' ]]; then
    echo "Choose one parameter from start and stop"
    echo -e "\njps:\n"
    jps
    exit
fi
if [ $1 = 'start' ]; then
    sbin/hadoop-daemon.sh start namenode
    sbin/hadoop-daemon.sh start datanode
    sbin/yarn-daemon.sh start resourcemanager
    sbin/yarn-daemon.sh start nodemanager
    sbin/mr-jobhistory-daemon.sh start historyserver
elif [ $1 = 'stop' ]; then
    sbin/hadoop-daemon.sh stop namenode
    sbin/hadoop-daemon.sh stop datanode
    sbin/yarn-daemon.sh stop resourcemanager
    sbin/yarn-daemon.sh stop nodemanager
    sbin/mr-jobhistory-daemon.sh stop historyserver
else
    echo "Parameter error"
fi
echo -e "\njps:\n"
jps
