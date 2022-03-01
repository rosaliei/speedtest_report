#!/bin/bash

date=$(date +%F)
time=$(date +%Ihr)

mkdir --parents /home/speedtest_user/speedtest_daily_report/"$date"

speedtest -s 14062 -u Mbps >> /home/speedtest_user/speedtest_daily_report/"$date"/speedtest_report_"$time".csv

for i in 31650 16916 30327 20670 20671 17590 17602 20882 

do

   speedtest -s $i -u Mbps >> /home/speedtest_user/speedtest_daily_report/"$date"/speedtest_report_"$time".csv

done

curl  -u 'test_bot:Test123!@#' -X MKCOL  "https://$domain/nextcloud/remote.php/dav/files/noc_bot/NOC_SPEEDTEST_REPORT/"$date""
curl -T /home/speedtest_user/speedtest_daily_report/"$date"/speedtest_report_"$time".csv  -u 'test_bot:Test123!@#' "https://$domain/nextcloud/remote.php/dav/files/noc_bot/NOC_SPEEDTEST_REPORT/"$date"/speedtest_report_"$time".csv"
