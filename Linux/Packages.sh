#!/bin/bash

echo -e "\033[0;36m Starting Packages.sh \033[0m"

sudo apt purge --autoremove wfuzz > /dev/null
sudo apt purge --autoremove dsniff > /dev/null
sudo apt purge --autoremove fcrackzip > /dev/null
sudo apt purge --autoremove reaver > /dev/null
sudo apt purge --autoremove aircrack-ng > /dev/null
sudo apt purge --autoremove medusa > /dev/null
sudo apt purge --autoremove nmap > /dev/null
sudo apt purge --autoremove zenmap > /dev/null
sudo apt purge --autoremove wifite > /dev/null
sudo apt purge --autoremove mdk4 > /dev/null
sudo apt purge --autoremove rsh-server > /dev/null
sudo apt purge --autoremove arp-scan > /dev/null
sudo apt purge --autoremove doona > /dev/null
sudo apt purge --autoremove dnswalk > /dev/null
sudo apt purge --autoremove nginx > /dev/null
sudo apt purge --autoremove tighvncserver > /dev/null
sudo apt purge --autoremove samba > /dev/null
sudo apt purge --autoremove xprobe > /dev/null
sudo apt purge --autoremove knocker > /dev/null
sudo apt purge --autoremove knot > /dev/null
sudo apt purge --autoremove tvoe > /dev/null
sudo apt purge --autoremove xye > /dev/null
sudo apt purge --autoremove atom4 > /dev/null
sudo apt purge --autoremove p0f > /dev/null
sudo apt purge --autoremove dirb > /dev/null
sudo apt purge --autoremove dmitri > /dev/null
sudo apt purge --autoremove sidap > /dev/null
sudo apt purge --autoremove postfix > /dev/null
sudo apt purge --autoremove sslsniff > /dev/null
sudo apt purge --autoremove moon-buggy > /dev/null
sudo apt purge --autoremove tightvnc > /dev/null
sudo apt purge --autoremove fail2ban > /dev/null
sudo apt purge --autoremove minetest > /dev/null
sudo apt purge --autoremove pushpin > /dev/null
sudo apt purge --autoremove dhcpig > /dev/null
sudo apt purge --autoremove vsFTPd > /dev/null
sudo apt purge --autoremove greed > /dev/null
sudo apt purge --autoremove slapd > /dev/null
sudo apt purge --autoremove bind9 > /dev/null
sudo apt purge --autoremove ksirk > /dev/null
sudo apt purge --autoremove knotku > /dev/null
sudo apt purge --autoremove tnftp > /dev/null
sudo apt purge --autoremove openvpn > /dev/null
sudo apt purge --autoremove openssh-server > /dev/null
sudo apt purge --autoremove opensmtpd > /dev/null
sudo apt purge --autoremove pure-ftp > /dev/null
sudo apt purge --autoremove john > /dev/null
sudo apt purge --autoremove hydra > /dev/null
sudo apt purge --autoremove hashcat > /dev/null
sudo apt purge --autoremove apache2 > /dev/null
sudo apt purge --autoremove nudoku > /dev/null
sudo apt purge --autoremove goldeneye > /dev/null
sudo apt purge --autoremove mdk3 > /dev/null
sudo apt purge --autoremove lftp > /dev/null
sudo apt purge --autoremove zangband > /dev/null
sudo apt purge --autoremove yersinia > /dev/null
sudo apt purge --autoremove wireshark > /dev/null
sudo apt purge --autoremove recon-ng > /dev/null
sudo apt purge --autoremove xonotic > /dev/null
sudo apt purge --autoremove postgresql > /dev/null
sudo apt purge --autoremove ldap > /dev/null
sudo apt purge --autoremove remmina > /dev/null
sudo apt purge --autoremove thc-ipv6 > /dev/null
sudo apt purge --autoremove rfdump > /dev/null
sudo apt purge --autoremove tcpdump > /dev/null
sudo apt purge --autoremove mysql > /dev/null
sudo apt purge --autoremove redis > /dev/null
sudo apt purge --autoremove weplab > /dev/null
sudo apt purge --autoremove cowpatty > /dev/null
sudo apt purge --autoremove xlcrack > /dev/null
sudo apt purge --autoremove vodovod > /dev/null
sudo apt purge --autoremove worldofpadman > /dev/null
sudo apt purge --autoremove wayvnc > /dev/null
sudo apt purge --autoremove proftpd > /dev/null
sudo apt purge --autoremove xrdp > /dev/null
sudo apt purge --autoremove DNSrecon > /dev/null
sudo apt purge --autoremove packit > /dev/null
sudo apt purge --autoremove ncft > /dev/null
sudo apt purge --autoremove chntpw > /dev/null
sudo snap remove kollision > /dev/null
sudo snap remove vlc > /dev/null
sudo snap remove ftp-scan > /dev/null
sudo snap remove rainbowcrack > /dev/null
sudo snap remove spotify > /dev/null

apt update && sudo apt install firefox > /dev/null
apt-get update > /dev/null
apt-get upgrade > /dev/null
apt-get install libpam-cracklib > /dev/null
apt-get install fail2ban > /dev/null
apt-get install openssh-server > /dev/null
apt-get install openssh-client > /dev/null
service ssh start > /dev/null
systemctl status ssh > /dev/null
service ssh status > /dev/null
echo "Enter a package to install ('quit' to exit)"
read new_package

while [[ $new_package != "quit" ]]
do
	echo "Installing " $new_package
	apt-get install $new_package > /dev/null
	echo "Enter a New Package"
	read new_package
done

apt purge --autoremove aisleriot gnome-mines gnome-sudoku gnome-mahjongg hydra telnet john nginx netcat-openbsd wireshark sl 

echo "Enter a package to delete ('quit' to exit)"
read bad_package

while [[ $bad_package != "quit" ]]
do
	echo "Deleting " $bad_package
	apt purge $bad_package > /dev/null
	echo "Enter a New Package"
	read bad_package
done

echo -e "\033[0;36m Packages.sh Complete \033[0m"