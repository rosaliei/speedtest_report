#!/bin/bash

date=$(date +%F)
time=$(date +%T)

mkdir --parents /usr/local/speedtest_daily_report/"$date"

speedtest -s 20670 --format=csv --output-header >> /usr/local/speedtest_daily_report/"$date"/speedtest_report_"$time".csv

for i in 16916 17602 14062 33507

do

   speedtest -s $i --format=csv >> /usr/local/speedtest_daily_report/"$date"/speedtest_report_"$time".csv

done



