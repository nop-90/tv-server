echo "Installing the script (make sure you've changed the default channel path before installing). Press enter to confirm."
read none
cp tv /usr/local/bin/
cp remote_control.py /usr/local/bin/
cp remote-control.service /etc/systemd/system/
systemctl enable remote-control.service
