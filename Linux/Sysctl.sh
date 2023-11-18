#!/bin/bash

echo -e "\033[0;35m Starting Sysctl.sh \033[0m"

# Check if the script is running as root
if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root."
  exit 1
fi

# Backup the existing sysctl configuration
cp /etc/sysctl.conf /etc/sysctl.conf.bak

# Harden sysctl parameters for improved security
echo "# IP Spoofing protection" >> "/etc/sysctl.conf"
echo "net.ipv4.conf.all.rp_filter = 1" >> "/etc/sysctl.conf"
echo "net.ipv4.conf.default.rp_filter = 1" >> "/etc/sysctl.conf"
echo "" >> "/etc/sysctl.conf"
echo "# Ignore ICMP broadcast requests" >> "/etc/sysctl.conf"
echo "net.ipv4.icmp_echo_ignore_broadcasts = 1" >> "/etc/sysctl.conf"
echo "" >> "/etc/sysctl.conf"
echo "# Disable source packet routing" >> "/etc/sysctl.conf"
echo "net.ipv4.conf.all.accept_source_route = 0" >> "/etc/sysctl.conf"
echo "net.ipv6.conf.all.accept_source_route = 0" >> "/etc/sysctl.conf"
echo "net.ipv4.conf.default.accept_source_route = 0" >> "/etc/sysctl.conf"
echo "net.ipv6.conf.default.accept_source_route = 0" >> "/etc/sysctl.conf"
echo "" >> "/etc/sysctl.conf"
echo "# Ignore send redirects" >> "/etc/sysctl.conf"
echo "net.ipv4.conf.all.send_redirects = 0" >> "/etc/sysctl.conf"
echo "net.ipv4.conf.default.send_redirects = 0" >> "/etc/sysctl.conf"
echo "" >> "/etc/sysctl.conf"
echo "# Block SYN attacks" >> "/etc/sysctl.conf"
echo "net.ipv4.tcp_syncookies = 1" >> "/etc/sysctl.conf"
echo "net.ipv4.tcp_syn_retries = 5" >> "/etc/sysctl.conf"
echo "net.ipv4.tcp_max_syn_backlog = 2048" >> "/etc/sysctl.conf"
echo "net.ipv4.tcp_synack_retries = 2" >> "/etc/sysctl.conf"
echo "net.ipv4.tcp_timestamps=0" >> "/etc/sysctl.conf"
echo "vm.memory_failure_early_kill=1" >> "/etc/sysctl.conf"
echo "dev.tty.ldisc_autoload = 0" >> "/etc/sysctl.conf"
echo "" >> "/etc/sysctl.conf"
echo "" >> "/etc/sysctl.conf"
echo "# Log Martians" >> "/etc/sysctl.conf"
echo "net.ipv4.conf.all.log_martians = 1" >> "/etc/sysctl.conf"
echo "net.ipv4.icmp_ignore_bogus_error_responses = 1" >> "/etc/sysctl.conf"
echo "" >> "/etc/sysctl.conf"
echo "# Ignore ICMP redirects" >> "/etc/sysctl.conf"
echo "net.ipv4.conf.all.accept_redirects = 0" >> "/etc/sysctl.conf"
echo "net.ipv6.conf.all.accept_redirects = 0" >> "/etc/sysctl.conf"
echo "net.ipv4.conf.default.accept_redirects = 0" >> "/etc/sysctl.conf"
echo "net.ipv6.conf.default.accept_redirects = 0" >> "/etc/sysctl.conf"
echo "" >> "/etc/sysctl.conf"
echo "# Ignore Directed pings" >> "/etc/sysctl.conf"
echo "net.ipv4.icmp_echo_ignore_all = 1" >> "/etc/sysctl.conf"
echo "fs.suid_dumpable=0" >> "/etc/sysctl.conf"
echo "net.ipv4.ip_forward = 0" >> "/etc/sysctl.conf"
sysctl -p > /dev/null

echo -e "\033[0;35m Sysctl.sh Complete \033[0m"