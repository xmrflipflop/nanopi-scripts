# from https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-vnc-on-ubuntu-18-04

sudo apt install tightvncserver

# Set up password
vncserver

# Stop server to configure it more
vncserver -kill :1

cp tightvnc/xstartup ~/.vnc/xstartup
sudo chmod 755 ~/.vnc/xstartup

# Don't need this if service units are working
#cp tightvnc/vncserver.init ~/.vnc/vncserver.init
#sudo chmod +x ~/.vnc/vncserver.init

sudo cp tightvnc/vncserver.service /lib/systemd/system/vncserver.service

# test and start with
sudo service vncserver start
# sudo service vncserver status

# enable autostart
#sudo systemctl enable vncserver
sudo systemctl reenable vncserver

