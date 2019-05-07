# adapted from https://superuser.com/questions/634628/is-there-a-script-to-add-port-forwarding-rule-in-home-router
sudo apt install miniupnpc

cp -r miniupnp ~/.miniupnp

chmod 700 ~/.miniupnp/upnpc-ssh.sh

# update cronjob
# Example entry
## Every hour
#0 */1 * * * ~/.miniupnp/upnpc-ssh.sh >/dev/null 2>&1
crontab -e
