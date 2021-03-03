#!/bin/bash

date=$(date +%F)
time=$(date +%T)

mkdir --parents /usr/local/speedtest_daily_report/"$date"

speedtest -s 14062 --format=csv --output-header >> /usr/local/speedtest_daily_report/"$date"/speedtest_report_"$time".csv

for i in 31650 16916 30327 20670 20671 17590 17602 20882 

do

   speedtest -s $i --format=csv >> /usr/local/speedtest_daily_report/"$date"/speedtest_report_"$time".csv

done



