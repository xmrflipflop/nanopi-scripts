#!/bin/bash
OUTPUT_FILE=/tmp/`basename "$0"`.log
PORT=2222

IFCONFIG=/sbin/ifconfig
GREP=/bin/grep
AWK=/usr/bin/awk
CUT=/usr/bin/cut

LOCAL_IP=`$IFCONFIG eth0 | $GREP mask | $AWK '{print $2}'| $CUT -f2 -d:`

date > $OUTPUT_FILE

echo "--------- Start ----------" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE
echo "upnpc -a $LOCAL_IP 22 $PORT TCP" >> $OUTPUT_FILE
upnpc -a $LOCAL_IP 22 $PORT TCP  >> $OUTPUT_FILE 2>&1
echo "" >> $OUTPUT_FILE
echo "To remove the rule, use" >> $OUTPUT_FILE
echo "upnpc -d $PORT TCP" >> $OUTPUT_FILE
echo "---------- End -----------" >> $OUTPUT_FILE


