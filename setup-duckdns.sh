
cp -r duckdns ~/.duckdns

# modify the file to insert correct token
nano ~/.duckdns/duck.sh

chmod 700 ~/.duckdns/duck.sh

# Follow their web instructions via cron jobs
# https://www.duckdns.org/install.jsp
# example Crontab entry
## Every 5 minutes
# */5 * * * * ~/.duckdns/duck.sh >/dev/null 2>&1

# NB: The output file /tmp/duck.response is used by oledhat display to show WAN IP
