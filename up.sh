# Make sure transmission is stopped and update it's IP address to that of the PIA tunnel.
service transmission onestop
ip=`ifconfig $1 | grep 'inet' | cut -d' ' -f2`
sed s/IP_ADDRESS/$ip/ /usr/local/etc/transmission/home/settings_template.json > /usr/local/etc/transmission/home/settings.json
service transmission onestart
