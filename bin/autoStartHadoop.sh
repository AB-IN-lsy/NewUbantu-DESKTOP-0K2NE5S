#!/bin/bash

cd /opt/hadoop-2.7.2
./sbin/start-all.sh
sbin/mr-jobhistory-daemon.sh start historyserver
jps

