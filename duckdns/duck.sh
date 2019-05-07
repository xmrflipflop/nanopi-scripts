#!/bin/bash
OUTPUT_FILE=/tmp/duck.response
TOKEN=unknown

date > $OUTPUT_FILE
echo "-------- Response --------" >> $OUTPUT_FILE
echo url="https://www.duckdns.org/update?domains=aluminium&token=$TOKEN&verbose=true&ip=" | curl -k -K - >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE
echo "---------- End -----------" >> $OUTPUT_FILE
