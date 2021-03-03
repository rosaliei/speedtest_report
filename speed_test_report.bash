#!/bin/bash

date=$(date +%F)
time=$(date +%Ihr)

mkdir --parents /home/speedtest_user/speedtest_daily_report/"$date"

speedtest -s 14062 --format=csv --output-header >> /home/speedtest_user/speedtest_daily_report/"$date"/speedtest_report_"$time".csv

for i in 31650 16916 30327 20670 20671 17590 17602 20882 

do

   speedtest -s $i --format=csv >> /home/speedtest_user/speedtest_daily_report/"$date"/speedtest_report_"$time".csv

done

curl  -u 'noc_bot:Gtmh123!@#' -X MKCOL  "https://app.gtmh-telecom.com/nextcloud/remote.php/dav/files/noc_bot/NOC_SPEEDTEST_REPORT/"$date""
curl -T /usr/local/speedtest_daily_report/"$date"/speedtest_report_"$time".csv  -u 'noc_bot:Gtmh123!@#' "https://app.gtmh-telecom.com/nextcloud/remote.php/dav/files/noc_bot/NOC_SPEEDTEST_REPORT/"$date"/speedtest_report_"$time".csv"