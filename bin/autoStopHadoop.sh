#!/bin/bash
cd /opt/hadoop-2.7.2
./sbin/stop-all.sh
./sbin/mr-jobhistory-daemon.sh stop historyserver
jps
