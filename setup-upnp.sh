# adapted from https://superuser.com/questions/634628/is-there-a-script-to-add-port-forwarding-rule-in-home-router
sudo apt install miniupnpc

upnpc -a `ifconfig wlan0 | grep "inet addr" | cut -d : -f 2 | cut -d " " -f 1` 22 22 TCP
