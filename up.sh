# Make sure transmission is stopped and update it's IP address to that of the PIA tunnel.
service transmission onestop
sed s/IP_ADDRESS/$1/ /usr/local/etc/transmission/home/settings_template.json > /usr/local/etc/transmission/home/settings.json
service transmission onestart
