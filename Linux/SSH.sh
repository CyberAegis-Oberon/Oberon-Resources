#!/bin/bash

echo -e "\033[0;34m Starting SSH.sh \033[0m"

rm -rf /etc/ssh/sshd_config
touch /etc/ssh/sshd_config
chmod 644 /etc/ssh/sshd_config
echo "# Package generated configuration file" >> "/etc/ssh/sshd_config"
echo "# See the sshd_config(5) manpage for details" >> "/etc/ssh/sshd_config"
echo "" >> "/etc/ssh/sshd_config"
echo "# What ports, IPs and protocols we listen for" >> "/etc/ssh/sshd_config"
echo "Port 22" >> "/etc/ssh/sshd_config"
echo "# Use these options to restrict which interfaces/protocols sshd will bind to" >> "/etc/ssh/sshd_config"
echo "#ListenAddress ::" >> "/etc/ssh/sshd_config"
echo "#ListenAddress 0.0.0.0" >> "/etc/ssh/sshd_config"
echo "Protocol 2" >> "/etc/ssh/sshd_config"
echo "# HostKeys for protocol version 2" >> "/etc/ssh/sshd_config"
echo "HostKey /etc/ssh/ssh_host_rsa_key" >> "/etc/ssh/sshd_config"
echo "HostKey /etc/ssh/ssh_host_dsa_key" >> "/etc/ssh/sshd_config"
echo "HostKey /etc/ssh/ssh_host_ecdsa_key" >> "/etc/ssh/sshd_config"
echo "HostKey /etc/ssh/ssh_host_ed25519_key" >> "/etc/ssh/sshd_config"
echo "#Privilege Separation is turned on for security" >> "/etc/ssh/sshd_config"
echo "UsePrivilegeSeparation yes" >> "/etc/ssh/sshd_config"
echo "" >> "/etc/ssh/sshd_config"
echo "# Lifetime and size of ephemeral version 1 server key" >> "/etc/ssh/sshd_config"
echo "KeyRegenerationInterval 3600" >> "/etc/ssh/sshd_config"
echo "ServerKeyBits 1024" >> "/etc/ssh/sshd_config"
echo "" >> "/etc/ssh/sshd_config"
echo "# Logging" >> "/etc/ssh/sshd_config"
echo "SyslogFacility AUTH" >> "/etc/ssh/sshd_config"
echo "LogLevel VERBOSE" >> "/etc/ssh/sshd_config"
echo "" >> "/etc/ssh/sshd_config"
echo "# Authentication:" >> "/etc/ssh/sshd_config"
echo "LoginGraceTime 120" >> "/etc/ssh/sshd_config"
echo "PermitRootLogin no" >> "/etc/ssh/sshd_config"
echo "StrictModes yes" >> "/etc/ssh/sshd_config"
echo "" >> "/etc/ssh/sshd_config"
echo "RSAAuthentication yes" >> "/etc/ssh/sshd_config"
echo "PubkeyAuthentication yes" >> "/etc/ssh/sshd_config"
echo "#AuthorizedKeysFile	%h/.ssh/authorized_keys" >> "/etc/ssh/sshd_config"
echo "" >> "/etc/ssh/sshd_config"
echo "# Don't read the user's ~/.rhosts and ~/.shosts files" >> "/etc/ssh/sshd_config"
echo "IgnoreRhosts yes" >> "/etc/ssh/sshd_config"
echo "# For this to work you will also need host keys in /etc/ssh_known_hosts" >> "/etc/ssh/sshd_config"
echo "RhostsRSAAuthentication no" >> "/etc/ssh/sshd_config"
echo "# similar for protocol version 2" >> "/etc/ssh/sshd_config"
echo "HostbasedAuthentication no" >> "/etc/ssh/sshd_config"
echo "# Uncomment if you don't trust ~/.ssh/known_hosts for RhostsRSAAuthentication" >> "/etc/ssh/sshd_config"
echo "#IgnoreUserKnownHosts yes" >> "/etc/ssh/sshd_config"
echo "" >> "/etc/ssh/sshd_config"
echo "# To enable empty passwords, change to yes (NOT RECOMMENDED)" >> "/etc/ssh/sshd_config"
echo "PermitEmptyPasswords no" >> "/etc/ssh/sshd_config"
echo "" >> "/etc/ssh/sshd_config"
echo "# Change to yes to enable challenge-response passwords (beware issues with" >> "/etc/ssh/sshd_config"
echo "# some PAM modules and threads)" >> "/etc/ssh/sshd_config"
echo "ChallengeResponseAuthentication no" >> "/etc/ssh/sshd_config"
echo "" >> "/etc/ssh/sshd_config"
echo "# Change to no to disable tunnelled clear text passwords" >> "/etc/ssh/sshd_config"
echo "#PasswordAuthentication no" >> "/etc/ssh/sshd_config"
echo "" >> "/etc/ssh/sshd_config"
echo "# Kerberos options" >> "/etc/ssh/sshd_config"
echo "#KerberosAuthentication no" >> "/etc/ssh/sshd_config"
echo "#KerberosGetAFSToken no" >> "/etc/ssh/sshd_config"
echo "#KerberosOrLocalPasswd yes" >> "/etc/ssh/sshd_config"
echo "#KerberosTicketCleanup yes" >> "/etc/ssh/sshd_config"
echo "" >> "/etc/ssh/sshd_config"
echo "# GSSAPI options" >> "/etc/ssh/sshd_config"
echo "#GSSAPIAuthentication no" >> "/etc/ssh/sshd_config"
echo "#GSSAPICleanupCredentials yes" >> "/etc/ssh/sshd_config"
echo "" >> "/etc/ssh/sshd_config"
echo "X11Forwarding no" >> "/etc/ssh/sshd_config"
echo "X11DisplayOffset 10" >> "/etc/ssh/sshd_config"
echo "PrintMotd no" >> "/etc/ssh/sshd_config"
echo "PrintLastLog yes" >> "/etc/ssh/sshd_config"
echo "TCPKeepAlive yes" >> "/etc/ssh/sshd_config"
echo "#UseLogin no" >> "/etc/ssh/sshd_config"
echo "" >> "/etc/ssh/sshd_config"
echo "#MaxStartups 10:30:60" >> "/etc/ssh/sshd_config"
echo "#Banner /etc/issue" >> "/etc/ssh/sshd_config"
echo "" >> "/etc/ssh/sshd_config"
echo "# Allow client to pass locale environment variables" >> "/etc/ssh/sshd_config"
echo "AcceptEnv LANG LC_*" >> "/etc/ssh/sshd_config"
echo "" >> "/etc/ssh/sshd_config"
echo "Subsystem sftp /usr/lib/openssh/sftp-server" >> "/etc/ssh/sshd_config"
echo "" >> "/etc/ssh/sshd_config"
echo "# Set this to 'yes' to enable PAM authentication, account processing," >> "/etc/ssh/sshd_config"
echo "# and session processing. If this is enabled, PAM authentication will" >> "/etc/ssh/sshd_config"
echo "# be allowed through the ChallengeResponseAuthentication and" >> "/etc/ssh/sshd_config"
echo "# PasswordAuthentication.  Depending on your PAM configuration," >> "/etc/ssh/sshd_config"
echo "# PAM authentication via ChallengeResponseAuthentication may bypass" >> "/etc/ssh/sshd_config"
echo "# the setting of "PermitRootLogin without-password"." >> "/etc/ssh/sshd_config"
echo "# If you just want the PAM account and session checks to run without" >> "/etc/ssh/sshd_config"
echo "# PAM authentication, then enable this but set PasswordAuthentication" >> "/etc/ssh/sshd_config"
echo "# and ChallengeResponseAuthentication to 'no'." >> "/etc/ssh/sshd_config"
echo "UsePAM yes" >> "/etc/ssh/sshd_config"
echo "AllowGroups Users" >> "/etc/ssh/sshd_config"
sudo systemctl start ssh
systemctl restart sshd.service

echo -e "\033[0;34m SSH.sh Complete \033[0m"