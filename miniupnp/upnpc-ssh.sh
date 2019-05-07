#!/bin/bash
OUTPUT_FILE=/tmp/`basename "$0"`.log
PORT=62222

LOCAL_IP=`ifconfig eth0 | grep mask | awk '{print $2}'| cut -f2 -d:`

date > $OUTPUT_FILE

echo "--------- Start ----------" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE
echo "upnpc -a $LOCAL_IP 22 $PORT TCP" >> $OUTPUT_FILE
upnpc -a $LOCAL_IP 22 $PORT TCP  >> $OUTPUT_FILE 2>&1
echo "" >> $OUTPUT_FILE
echo "To remove the rule, use"
echo "upnpc -d $PORT TCP"
echo "---------- End -----------" >> $OUTPUT_FILE


